# HARRY2.0

HARRY2.0 is the 2nd version of a Raspberry Pi 3B based home automation and surveillance system project.
HARRY stand for: Home Automation and suRveillance with RaspberrY

Configuration to be made on the Raspberry to get the system properly running:
- Enable raspicam
- Setting up USART0 port (it is a littlebit trickey, but the following forum helps)
    https://raspberrypi.stackexchange.com/questions/45570/how-do-i-make-serial-work-on-the-raspberry-pi3-pi3b-pizerow
- Setting up apache2 server to run python based cgi scripts (discribed in the following forum)
    https://www.raspberrypi.org/forums/viewtopic.php?t=155229
    - It is quite a heck to make the cgi sript to take pictures and show it on the homepage, but this page helps a bit:
        http://www.civrays.com/myrobot/news/pythoncgi
    
