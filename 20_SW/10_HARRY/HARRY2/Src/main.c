/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  ** This notice applies to any and all portions of this file
  * that are not between comment pairs USER CODE BEGIN and
  * USER CODE END. Other portions of this file, whether 
  * inserted by the user or by software development tools
  * are owned by their respective copyright owners.
  *
  * COPYRIGHT(c) 2019 STMicroelectronics
  *
  * Redistribution and use in source and binary forms, with or without modification,
  * are permitted provided that the following conditions are met:
  *   1. Redistributions of source code must retain the above copyright notice,
  *      this list of conditions and the following disclaimer.
  *   2. Redistributions in binary form must reproduce the above copyright notice,
  *      this list of conditions and the following disclaimer in the documentation
  *      and/or other materials provided with the distribution.
  *   3. Neither the name of STMicroelectronics nor the names of its contributors
  *      may be used to endorse or promote products derived from this software
  *      without specific prior written permission.
  *
  * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
  * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
  * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
  * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
  * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
  * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
  * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
  * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "adc.h"
#include "dma.h"
#include "i2s.h"
#include "usart.h"
#include "gpio.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

#include "tm_stm32_delay.h"
#include "tm_stm32_ds18b20.h"
#include "tm_stm32_onewire.h"

/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */

/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/

/* USER CODE BEGIN PV */

/* Onewire structure */
TM_OneWire_t OW;
uint8_t DS_ROM[8];
/* Temperature variable */
float temp;
uint16_t Data1[1000] = { 0 };
uint16_t Data2[1000] = { 0 };
int32_t Audio[250] = { 0 };
int32_t Audio2[1000] = { 0 };
uint16_t Size = 1000;
uint8_t Ready = 0;
uint16_t *produce_ptr, *consume_ptr;
uint8_t which;
uint8_t state;

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
/* USER CODE BEGIN PFP */

void ProcessAudio();

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{
  /* USER CODE BEGIN 1 */
	uint32_t value = 12;
	char value_str[50];


  /* USER CODE END 1 */

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_DMA_Init();
  MX_ADC1_Init();
  MX_USART1_UART_Init();
  MX_I2S2_Init();
  /* USER CODE BEGIN 2 */

  /* Init ONEWIRE port */

  TM_OneWire_Init(&OW, GPIOA, GPIO_PIN_2);
  /* Check if any device is connected */
  if (TM_OneWire_First(&OW)) {

	  /* Read ROM number */
	  TM_OneWire_GetFullROM(&OW, DS_ROM);
  } else {
	  /* Set GREEN RED if something is wrong*/
	  setDutyLED();
  }

  if (TM_DS18B20_Is(DS_ROM)) {
          /* Set resolution */
          TM_DS18B20_SetResolution(&OW, DS_ROM, TM_DS18B20_Resolution_12bits);
          TM_DS18B20_StartAll(&OW);
  }


  // Initalize variables for audio processing
  produce_ptr = Data1;
  which = 1;
  state = '0';
  consume_ptr = Data2;
  HAL_I2S_Receive_DMA(&hi2s2, produce_ptr, Size/2);


  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
	  uint8_t command[1];
	  HAL_StatusTypeDef res;
	  res = HAL_UART_Receive(&huart1, command, 1, 0x0000);

	  if(res!= (HAL_StatusTypeDef)HAL_TIMEOUT){
		  // decoding command
		  state = command[0];
	  }



	  if (is5000msElapsed() && (state == '0'))
	  {
		  //HAL_ADC_Start (&hadc1);
		  if (TM_DS18B20_Is(DS_ROM))
		  {
			  //Everything is done
			  if (TM_DS18B20_AllDone(&OW))
			  {
				  //Read temperature from device
				  if (TM_DS18B20_Read(&OW, DS_ROM, &temp))
				  {
					  //Temp read OK, CRC is OK

					  //Start again on all sensors
					  TM_DS18B20_StartAll(&OW);

				  } else
				  {
					  //CRC failed, hardware problems on data line
					  toggleDutyLED();
				  }
			  }
		  }


		  value = TM_ADC_Read(ADC1, 0);
		  sprintf(value_str,"%d,%.3f",value,temp);
		  debugPrint(value_str);

	  }

	  if ((state == '1') && (Ready == 1))
	  {
		  ProcessAudio();
		  HAL_UART_Transmit(&huart1, (uint8_t*) Audio,  (uint16_t) Size, 0xFFFF);
		  Ready = 0;
	  }
  }
  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};
  RCC_PeriphCLKInitTypeDef PeriphClkInit = {0};

  /**Initializes the CPU, AHB and APB busses clocks 
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSE;
  RCC_OscInitStruct.HSEState = RCC_HSE_ON;
  RCC_OscInitStruct.HSEPredivValue = RCC_HSE_PREDIV_DIV1;
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
  RCC_OscInitStruct.PLL.PLLMUL = RCC_PLL_MUL4;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }
  /**Initializes the CPU, AHB and APB busses clocks 
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV2;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV1;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_1) != HAL_OK)
  {
    Error_Handler();
  }
  PeriphClkInit.PeriphClockSelection = RCC_PERIPHCLK_USART1|RCC_PERIPHCLK_ADC1;
  PeriphClkInit.Usart1ClockSelection = RCC_USART1CLKSOURCE_PCLK2;
  PeriphClkInit.Adc1ClockSelection = RCC_ADC1PCLK2_DIV2;

  if (HAL_RCCEx_PeriphCLKConfig(&PeriphClkInit) != HAL_OK)
  {
    Error_Handler();
  }
}

/* USER CODE BEGIN 4 */

void ProcessAudio()
{

	int i;
	for (i = 0; i < (Size - 1); i +=1)
	{
		if ((i % 4) == 2)
		{
			uint32_t high = (((uint32_t) (consume_ptr[i] & 0x3fff)) << 9);
			high &= 0x00ffffff;
			uint32_t low = ((consume_ptr[i + 1] & 0xff80) >> 7);
			low &= 0x00ffffff;
			int32_t value = (high + low);
			int sign = consume_ptr[i] & 0x4000;
			if (sign != 0)
			{
				value = value - (1 << 23);
			}
			Audio[(i-2) / 4] = value;
		}
		Audio2[i] = consume_ptr[i];
	}
	Ready = 0;
}

uint8_t getTimeElapsed(uint16_t waitTime)
{
	static volatile uint32_t prevTime = 0;
	static volatile uint32_t currTime = 0;

	currTime = HAL_GetTick();
	if ((currTime - prevTime) >= waitTime)
	{
		prevTime = currTime;
		return TRUE;

	}
	else
	{
		return FALSE;
	}
}

/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */

  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(char *file, uint32_t line)
{ 
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     tex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
