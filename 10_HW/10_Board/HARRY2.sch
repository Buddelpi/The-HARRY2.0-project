<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="8.5.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="STM32F373">
<packages>
<package name="LQFP48-7X7">
<description>&lt;b&gt;LQFP48 &lt;/b&gt;&lt;p&gt;Low profile Quad Flat Package 7x7x1.4&lt;/p&gt;</description>
<wire x1="-3.4" y1="-3.4" x2="3.4" y2="-3.4" width="0.2032" layer="51"/>
<wire x1="3.4" y1="-3.4" x2="3.4" y2="3.4" width="0.2032" layer="51"/>
<wire x1="3.4" y1="3.4" x2="-3.4" y2="3.4" width="0.2032" layer="51"/>
<wire x1="-3.4" y1="3.4" x2="-3.4" y2="-3.4" width="0.2032" layer="51"/>
<wire x1="-3.2" y1="3.2" x2="3.2" y2="3.2" width="0.2032" layer="21"/>
<wire x1="3.2" y1="3.2" x2="3.2" y2="-3.2" width="0.2032" layer="21"/>
<wire x1="3.2" y1="-3.2" x2="-3.2" y2="-3.2" width="0.2032" layer="21"/>
<wire x1="-3.2" y1="-3.2" x2="-3.2" y2="3.2" width="0.2032" layer="21"/>
<wire x1="-5" y1="-5" x2="-5" y2="5" width="0.127" layer="39"/>
<wire x1="-5" y1="5" x2="5" y2="5" width="0.127" layer="39"/>
<wire x1="5" y1="5" x2="5" y2="-5" width="0.127" layer="39"/>
<wire x1="5" y1="-5" x2="-5" y2="-5" width="0.127" layer="39"/>
<circle x="-2.2499" y="-2.2499" radius="0.4998" width="0.2032" layer="21"/>
<smd name="1" x="-2.75" y="-4.1" dx="0.3" dy="1.6" layer="1"/>
<smd name="2" x="-2.25" y="-4.1" dx="0.3" dy="1.6" layer="1"/>
<smd name="3" x="-1.75" y="-4.1" dx="0.3" dy="1.6" layer="1"/>
<smd name="4" x="-1.25" y="-4.1" dx="0.3" dy="1.6" layer="1"/>
<smd name="5" x="-0.75" y="-4.1" dx="0.3" dy="1.6" layer="1"/>
<smd name="6" x="-0.25" y="-4.1" dx="0.3" dy="1.6" layer="1"/>
<smd name="7" x="0.25" y="-4.1" dx="0.3" dy="1.6" layer="1"/>
<smd name="8" x="0.75" y="-4.1" dx="0.3" dy="1.6" layer="1"/>
<smd name="9" x="1.25" y="-4.1" dx="0.3" dy="1.6" layer="1"/>
<smd name="10" x="1.75" y="-4.1" dx="0.3" dy="1.6" layer="1"/>
<smd name="11" x="2.25" y="-4.1" dx="0.3" dy="1.6" layer="1"/>
<smd name="12" x="2.75" y="-4.1" dx="0.3" dy="1.6" layer="1"/>
<smd name="13" x="4.1" y="-2.75" dx="1.6" dy="0.3" layer="1"/>
<smd name="14" x="4.1" y="-2.25" dx="1.6" dy="0.3" layer="1"/>
<smd name="15" x="4.1" y="-1.75" dx="1.6" dy="0.3" layer="1"/>
<smd name="16" x="4.1" y="-1.25" dx="1.6" dy="0.3" layer="1"/>
<smd name="17" x="4.1" y="-0.75" dx="1.6" dy="0.3" layer="1"/>
<smd name="18" x="4.1" y="-0.25" dx="1.6" dy="0.3" layer="1"/>
<smd name="19" x="4.1" y="0.25" dx="1.6" dy="0.3" layer="1"/>
<smd name="20" x="4.1" y="0.75" dx="1.6" dy="0.3" layer="1"/>
<smd name="21" x="4.1" y="1.25" dx="1.6" dy="0.3" layer="1"/>
<smd name="22" x="4.1" y="1.75" dx="1.6" dy="0.3" layer="1"/>
<smd name="23" x="4.1" y="2.25" dx="1.6" dy="0.3" layer="1"/>
<smd name="24" x="4.1" y="2.75" dx="1.6" dy="0.3" layer="1"/>
<smd name="25" x="2.75" y="4.1" dx="0.3" dy="1.6" layer="1"/>
<smd name="26" x="2.25" y="4.1" dx="0.3" dy="1.6" layer="1"/>
<smd name="27" x="1.75" y="4.1" dx="0.3" dy="1.6" layer="1"/>
<smd name="28" x="1.25" y="4.1" dx="0.3" dy="1.6" layer="1"/>
<smd name="29" x="0.75" y="4.1" dx="0.3" dy="1.6" layer="1"/>
<smd name="30" x="0.25" y="4.1" dx="0.3" dy="1.6" layer="1"/>
<smd name="31" x="-0.25" y="4.1" dx="0.3" dy="1.6" layer="1"/>
<smd name="32" x="-0.75" y="4.1" dx="0.3" dy="1.6" layer="1"/>
<smd name="33" x="-1.25" y="4.1" dx="0.3" dy="1.6" layer="1"/>
<smd name="34" x="-1.75" y="4.1" dx="0.3" dy="1.6" layer="1"/>
<smd name="35" x="-2.25" y="4.1" dx="0.3" dy="1.6" layer="1"/>
<smd name="36" x="-2.75" y="4.1" dx="0.3" dy="1.6" layer="1"/>
<smd name="37" x="-4.1" y="2.75" dx="1.6" dy="0.3" layer="1"/>
<smd name="38" x="-4.1" y="2.25" dx="1.6" dy="0.3" layer="1"/>
<smd name="39" x="-4.1" y="1.75" dx="1.6" dy="0.3" layer="1"/>
<smd name="40" x="-4.1" y="1.25" dx="1.6" dy="0.3" layer="1"/>
<smd name="41" x="-4.1" y="0.75" dx="1.6" dy="0.3" layer="1"/>
<smd name="42" x="-4.1" y="0.25" dx="1.6" dy="0.3" layer="1"/>
<smd name="43" x="-4.1" y="-0.25" dx="1.6" dy="0.3" layer="1"/>
<smd name="44" x="-4.1" y="-0.75" dx="1.6" dy="0.3" layer="1"/>
<smd name="45" x="-4.1" y="-1.25" dx="1.6" dy="0.3" layer="1"/>
<smd name="46" x="-4.1" y="-1.75" dx="1.6" dy="0.3" layer="1"/>
<smd name="47" x="-4.1" y="-2.25" dx="1.6" dy="0.3" layer="1"/>
<smd name="48" x="-4.1" y="-2.75" dx="1.6" dy="0.3" layer="1"/>
<text x="-5.715" y="-3.81" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="6.985" y="-3.81" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<text x="-5.715" y="-3.81" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="6.985" y="-3.81" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-2.8999" y1="-4.5999" x2="-2.5999" y2="-3.4501" layer="51"/>
<rectangle x1="-2.4" y1="-4.5999" x2="-2.1001" y2="-3.4501" layer="51"/>
<rectangle x1="-1.8999" y1="-4.5999" x2="-1.5999" y2="-3.4501" layer="51"/>
<rectangle x1="-1.4" y1="-4.5999" x2="-1.1001" y2="-3.4501" layer="51"/>
<rectangle x1="-0.8999" y1="-4.5999" x2="-0.5999" y2="-3.4501" layer="51"/>
<rectangle x1="-0.4001" y1="-4.5999" x2="-0.1001" y2="-3.4501" layer="51"/>
<rectangle x1="0.1001" y1="-4.5999" x2="0.4001" y2="-3.4501" layer="51"/>
<rectangle x1="0.5999" y1="-4.5999" x2="0.8999" y2="-3.4501" layer="51"/>
<rectangle x1="1.1001" y1="-4.5999" x2="1.4" y2="-3.4501" layer="51"/>
<rectangle x1="1.5999" y1="-4.5999" x2="1.8999" y2="-3.4501" layer="51"/>
<rectangle x1="2.1001" y1="-4.5999" x2="2.4" y2="-3.4501" layer="51"/>
<rectangle x1="2.5999" y1="-4.5999" x2="2.8999" y2="-3.4501" layer="51"/>
<rectangle x1="3.4501" y1="-2.8999" x2="4.5999" y2="-2.5999" layer="51"/>
<rectangle x1="3.4501" y1="-2.4" x2="4.5999" y2="-2.1001" layer="51"/>
<rectangle x1="3.4501" y1="-1.8999" x2="4.5999" y2="-1.5999" layer="51"/>
<rectangle x1="3.4501" y1="-1.4" x2="4.5999" y2="-1.1001" layer="51"/>
<rectangle x1="3.4501" y1="-0.8999" x2="4.5999" y2="-0.5999" layer="51"/>
<rectangle x1="3.4501" y1="-0.4001" x2="4.5999" y2="-0.1001" layer="51"/>
<rectangle x1="3.4501" y1="0.1001" x2="4.5999" y2="0.4001" layer="51"/>
<rectangle x1="3.4501" y1="0.5999" x2="4.5999" y2="0.8999" layer="51"/>
<rectangle x1="3.4501" y1="1.1001" x2="4.5999" y2="1.4" layer="51"/>
<rectangle x1="3.4501" y1="1.5999" x2="4.5999" y2="1.8999" layer="51"/>
<rectangle x1="3.4501" y1="2.1001" x2="4.5999" y2="2.4" layer="51"/>
<rectangle x1="3.4501" y1="2.5999" x2="4.5999" y2="2.8999" layer="51"/>
<rectangle x1="2.5999" y1="3.4501" x2="2.8999" y2="4.5999" layer="51"/>
<rectangle x1="2.1001" y1="3.4501" x2="2.4" y2="4.5999" layer="51"/>
<rectangle x1="1.5999" y1="3.4501" x2="1.8999" y2="4.5999" layer="51"/>
<rectangle x1="1.1001" y1="3.4501" x2="1.4" y2="4.5999" layer="51"/>
<rectangle x1="0.5999" y1="3.4501" x2="0.8999" y2="4.5999" layer="51"/>
<rectangle x1="0.1001" y1="3.4501" x2="0.4001" y2="4.5999" layer="51"/>
<rectangle x1="-0.4001" y1="3.4501" x2="-0.1001" y2="4.5999" layer="51"/>
<rectangle x1="-0.8999" y1="3.4501" x2="-0.5999" y2="4.5999" layer="51"/>
<rectangle x1="-1.4" y1="3.4501" x2="-1.1001" y2="4.5999" layer="51"/>
<rectangle x1="-1.8999" y1="3.4501" x2="-1.5999" y2="4.5999" layer="51"/>
<rectangle x1="-2.4" y1="3.4501" x2="-2.1001" y2="4.5999" layer="51"/>
<rectangle x1="-2.8999" y1="3.4501" x2="-2.5999" y2="4.5999" layer="51"/>
<rectangle x1="-4.5999" y1="2.5999" x2="-3.4501" y2="2.8999" layer="51"/>
<rectangle x1="-4.5999" y1="2.1001" x2="-3.4501" y2="2.4" layer="51"/>
<rectangle x1="-4.5999" y1="1.5999" x2="-3.4501" y2="1.8999" layer="51"/>
<rectangle x1="-4.5999" y1="1.1001" x2="-3.4501" y2="1.4" layer="51"/>
<rectangle x1="-4.5999" y1="0.5999" x2="-3.4501" y2="0.8999" layer="51"/>
<rectangle x1="-4.5999" y1="0.1001" x2="-3.4501" y2="0.4001" layer="51"/>
<rectangle x1="-4.5999" y1="-0.4001" x2="-3.4501" y2="-0.1001" layer="51"/>
<rectangle x1="-4.5999" y1="-0.8999" x2="-3.4501" y2="-0.5999" layer="51"/>
<rectangle x1="-4.5999" y1="-1.4" x2="-3.4501" y2="-1.1001" layer="51"/>
<rectangle x1="-4.5999" y1="-1.8999" x2="-3.4501" y2="-1.5999" layer="51"/>
<rectangle x1="-4.5999" y1="-2.4" x2="-3.4501" y2="-2.1001" layer="51"/>
<rectangle x1="-4.5999" y1="-2.8999" x2="-3.4501" y2="-2.5999" layer="51"/>
<circle x="-3.5199" y="-4.1549" radius="0.1524" width="0.2032" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="STM32F373C_MISC">
<description>&lt;b&gt;STM32F373Cxx power pins&lt;/b&gt;&lt;br&gt;</description>
<pin name="VBAT" x="-15.24" y="5.08" length="short" direction="pwr"/>
<pin name="NRST" x="-15.24" y="15.24" length="short"/>
<pin name="VSSA/VREF-" x="-15.24" y="-12.7" length="short" direction="pwr"/>
<pin name="VDDA" x="-15.24" y="-2.54" length="short" direction="pwr"/>
<pin name="VDD1" x="-15.24" y="-5.08" length="short" direction="pwr"/>
<pin name="VSSSD/VREFSD-" x="-15.24" y="-17.78" length="short" direction="pwr"/>
<pin name="VDDSD" x="-15.24" y="2.54" length="short" direction="pwr"/>
<pin name="VREFSD+" x="-15.24" y="0" length="short" direction="pwr"/>
<pin name="BOOT0" x="-15.24" y="10.16" length="short"/>
<pin name="VSS" x="-15.24" y="-15.24" length="short" direction="pwr"/>
<pin name="VDD2" x="-15.24" y="-7.62" length="short" direction="pwr"/>
<wire x1="-12.7" y1="-20.32" x2="-12.7" y2="17.78" width="0.254" layer="94"/>
<wire x1="-12.7" y1="17.78" x2="12.7" y2="17.78" width="0.254" layer="94"/>
<wire x1="12.7" y1="17.78" x2="12.7" y2="-20.32" width="0.254" layer="94"/>
<wire x1="12.7" y1="-20.32" x2="-12.7" y2="-20.32" width="0.254" layer="94"/>
<text x="-12.7" y="22.86" size="1.778" layer="95">&gt;NAME</text>
<text x="-12.7" y="20.32" size="1.778" layer="96">&gt;VALUE</text>
</symbol>
<symbol name="STM32F373C_PA">
<description>&lt;b&gt;STM32F373Cxx port A&lt;/b&gt;&lt;br&gt;</description>
<pin name="PA0" x="-15.24" y="17.78" length="short"/>
<pin name="PA1" x="-15.24" y="15.24" length="short"/>
<pin name="PA2" x="-15.24" y="12.7" length="short"/>
<pin name="PA3" x="-15.24" y="10.16" length="short"/>
<pin name="PA4" x="-15.24" y="7.62" length="short"/>
<pin name="PA5" x="-15.24" y="5.08" length="short"/>
<pin name="PA6" x="-15.24" y="2.54" length="short"/>
<pin name="PA8" x="-15.24" y="0" length="short"/>
<pin name="PA9" x="-15.24" y="-2.54" length="short"/>
<pin name="PA10" x="-15.24" y="-5.08" length="short"/>
<pin name="PA11" x="-15.24" y="-7.62" length="short"/>
<pin name="PA12" x="-15.24" y="-10.16" length="short"/>
<pin name="PA13" x="-15.24" y="-12.7" length="short"/>
<pin name="PA14" x="-15.24" y="-15.24" length="short"/>
<pin name="PA15" x="-15.24" y="-17.78" length="short"/>
<text x="-12.7" y="25.4" size="1.778" layer="95">&gt;NAME</text>
<text x="-12.7" y="22.86" size="1.778" layer="96">&gt;VALUE</text>
<wire x1="-12.7" y1="-20.32" x2="-12.7" y2="20.32" width="0.254" layer="94"/>
<wire x1="-12.7" y1="20.32" x2="12.7" y2="20.32" width="0.254" layer="94"/>
<wire x1="12.7" y1="20.32" x2="12.7" y2="-20.32" width="0.254" layer="94"/>
<wire x1="12.7" y1="-20.32" x2="-12.7" y2="-20.32" width="0.254" layer="94"/>
</symbol>
<symbol name="STM32F373C_PB">
<description>&lt;b&gt;STM32F373Cxx port B&lt;/b&gt;&lt;br&gt;</description>
<pin name="PB0" x="-15.24" y="12.7" length="short"/>
<pin name="PB1" x="-15.24" y="10.16" length="short"/>
<pin name="PB2" x="-15.24" y="7.62" length="short"/>
<pin name="PB14" x="-15.24" y="-12.7" length="short"/>
<pin name="PB15" x="-15.24" y="-15.24" length="short"/>
<pin name="PB3" x="-15.24" y="5.08" length="short"/>
<pin name="PB4" x="-15.24" y="2.54" length="short"/>
<pin name="PB5" x="-15.24" y="0" length="short"/>
<pin name="PB6" x="-15.24" y="-2.54" length="short"/>
<pin name="PB7" x="-15.24" y="-5.08" length="short"/>
<pin name="PB8" x="-15.24" y="-7.62" length="short"/>
<pin name="PB9" x="-15.24" y="-10.16" length="short"/>
<text x="-12.7" y="20.32" size="1.778" layer="95">&gt;NAME</text>
<text x="-12.7" y="17.78" size="1.778" layer="96">&gt;VALUE</text>
<wire x1="-12.7" y1="-17.78" x2="-12.7" y2="15.24" width="0.254" layer="94"/>
<wire x1="-12.7" y1="15.24" x2="12.7" y2="15.24" width="0.254" layer="94"/>
<wire x1="12.7" y1="15.24" x2="12.7" y2="-17.78" width="0.254" layer="94"/>
<wire x1="12.7" y1="-17.78" x2="-12.7" y2="-17.78" width="0.254" layer="94"/>
</symbol>
<symbol name="STM32F373C_PC+E+D">
<description>&lt;b&gt;STM32F373Cxx port C, port D and port F&lt;/b&gt;&lt;br&gt;</description>
<pin name="PC13" x="-15.24" y="12.7" length="short"/>
<pin name="PC14-OSC32_IN" x="-15.24" y="15.24" length="short" function="clk"/>
<pin name="PC15-OSC32_OUT" x="-15.24" y="10.16" length="short" function="clk"/>
<pin name="PF0-OSC_IN" x="-15.24" y="-7.62" length="short" function="clk"/>
<pin name="PF1-OSC_OUT" x="-15.24" y="-10.16" length="short" function="clk"/>
<pin name="PE8" x="-15.24" y="0" length="short"/>
<pin name="PE9" x="-15.24" y="-2.54" length="short"/>
<pin name="PD8" x="-15.24" y="5.08" length="short"/>
<pin name="PF6" x="-15.24" y="-12.7" length="short"/>
<pin name="PF7" x="-15.24" y="-15.24" length="short"/>
<wire x1="-12.7" y1="-17.78" x2="-12.7" y2="17.78" width="0.254" layer="94"/>
<wire x1="-12.7" y1="17.78" x2="12.7" y2="17.78" width="0.254" layer="94"/>
<wire x1="12.7" y1="17.78" x2="12.7" y2="-17.78" width="0.254" layer="94"/>
<wire x1="12.7" y1="-17.78" x2="-12.7" y2="-17.78" width="0.254" layer="94"/>
<text x="-12.7" y="22.86" size="1.778" layer="95">&gt;NAME</text>
<text x="-12.7" y="20.32" size="1.778" layer="96">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="STM32F373C_" prefix="U">
<description>&lt;b&gt;STM32F373Cxx 48 pin&lt;/b&gt;&lt;br&gt;
ARM®Cortex®-M4 32b MCU+FPU,up to 256KB Flash+32KB SRAM
timers, 4 ADCs (12/16-bit),3DACs,2comp.,2.0-3.6V operation</description>
<gates>
<gate name="MISC" symbol="STM32F373C_MISC" x="-15.24" y="25.4"/>
<gate name="PA" symbol="STM32F373C_PA" x="17.78" y="25.4"/>
<gate name="PB" symbol="STM32F373C_PB" x="-15.24" y="-20.32"/>
<gate name="PCEF" symbol="STM32F373C_PC+E+D" x="17.78" y="-22.86"/>
</gates>
<devices>
<device name="T" package="LQFP48-7X7">
<connects>
<connect gate="MISC" pin="BOOT0" pad="44"/>
<connect gate="MISC" pin="NRST" pad="7"/>
<connect gate="MISC" pin="VBAT" pad="1"/>
<connect gate="MISC" pin="VDD1" pad="17"/>
<connect gate="MISC" pin="VDD2" pad="48"/>
<connect gate="MISC" pin="VDDA" pad="9"/>
<connect gate="MISC" pin="VDDSD" pad="24"/>
<connect gate="MISC" pin="VREFSD+" pad="25"/>
<connect gate="MISC" pin="VSS" pad="47"/>
<connect gate="MISC" pin="VSSA/VREF-" pad="8"/>
<connect gate="MISC" pin="VSSSD/VREFSD-" pad="23"/>
<connect gate="PA" pin="PA0" pad="10"/>
<connect gate="PA" pin="PA1" pad="11"/>
<connect gate="PA" pin="PA10" pad="31"/>
<connect gate="PA" pin="PA11" pad="32"/>
<connect gate="PA" pin="PA12" pad="33"/>
<connect gate="PA" pin="PA13" pad="34"/>
<connect gate="PA" pin="PA14" pad="37"/>
<connect gate="PA" pin="PA15" pad="38"/>
<connect gate="PA" pin="PA2" pad="12"/>
<connect gate="PA" pin="PA3" pad="13"/>
<connect gate="PA" pin="PA4" pad="14"/>
<connect gate="PA" pin="PA5" pad="15"/>
<connect gate="PA" pin="PA6" pad="16"/>
<connect gate="PA" pin="PA8" pad="29"/>
<connect gate="PA" pin="PA9" pad="30"/>
<connect gate="PB" pin="PB0" pad="18"/>
<connect gate="PB" pin="PB1" pad="19"/>
<connect gate="PB" pin="PB14" pad="26"/>
<connect gate="PB" pin="PB15" pad="27"/>
<connect gate="PB" pin="PB2" pad="20"/>
<connect gate="PB" pin="PB3" pad="39"/>
<connect gate="PB" pin="PB4" pad="40"/>
<connect gate="PB" pin="PB5" pad="41"/>
<connect gate="PB" pin="PB6" pad="42"/>
<connect gate="PB" pin="PB7" pad="43"/>
<connect gate="PB" pin="PB8" pad="45"/>
<connect gate="PB" pin="PB9" pad="46"/>
<connect gate="PCEF" pin="PC13" pad="2"/>
<connect gate="PCEF" pin="PC14-OSC32_IN" pad="3"/>
<connect gate="PCEF" pin="PC15-OSC32_OUT" pad="4"/>
<connect gate="PCEF" pin="PD8" pad="28"/>
<connect gate="PCEF" pin="PE8" pad="21"/>
<connect gate="PCEF" pin="PE9" pad="22"/>
<connect gate="PCEF" pin="PF0-OSC_IN" pad="5"/>
<connect gate="PCEF" pin="PF1-OSC_OUT" pad="6"/>
<connect gate="PCEF" pin="PF6" pad="35"/>
<connect gate="PCEF" pin="PF7" pad="36"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="DS1820">
<description>Dallas DS1820 (TO-92)
&lt;br&gt;
&lt;a href="http://jayakody2000lk.wordpress.com"&gt;jayakody2000lk.wordpress.com&lt;/a&gt;</description>
<packages>
<package name="TO-92">
<wire x1="-2.095" y1="-1.651" x2="-0.7869" y2="2.5484" width="0.1524" layer="21" curve="-111.097684"/>
<wire x1="0.7869" y1="2.5484" x2="2.095" y2="-1.651" width="0.1524" layer="21" curve="-111.097684"/>
<wire x1="-2.095" y1="-1.651" x2="2.095" y2="-1.651" width="0.1524" layer="21"/>
<wire x1="-2.254" y1="-0.254" x2="-0.286" y2="-0.254" width="0.1524" layer="51"/>
<wire x1="-2.655" y1="-0.254" x2="-2.254" y2="-0.254" width="0.1524" layer="21"/>
<wire x1="-0.286" y1="-0.254" x2="0.286" y2="-0.254" width="0.1524" layer="21"/>
<wire x1="2.254" y1="-0.254" x2="2.655" y2="-0.254" width="0.1524" layer="21"/>
<wire x1="0.286" y1="-0.254" x2="2.254" y2="-0.254" width="0.1524" layer="51"/>
<wire x1="-0.7864" y1="2.5484" x2="0.7864" y2="2.5484" width="0.1524" layer="51" curve="-34.298964"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" diameter="1.27" shape="octagon"/>
<pad name="2" x="0" y="1.905" drill="0.8128" diameter="1.27" shape="octagon"/>
<pad name="3" x="1.27" y="0" drill="0.8128" diameter="1.27" shape="octagon"/>
<text x="2.413" y="1.651" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="2.921" y="-1.27" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="1820">
<wire x1="-7.62" y1="5.08" x2="7.62" y2="5.08" width="0.254" layer="94"/>
<wire x1="7.62" y1="5.08" x2="7.62" y2="-5.08" width="0.254" layer="94"/>
<wire x1="7.62" y1="-5.08" x2="-7.62" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-5.08" x2="-7.62" y2="5.08" width="0.254" layer="94"/>
<text x="-7.62" y="6.35" size="1.778" layer="95">&gt;NAME</text>
<text x="2.54" y="-7.62" size="1.778" layer="96">&gt;VALUE</text>
<pin name="VDD" x="-10.16" y="2.54" length="short" direction="in"/>
<pin name="GND" x="0" y="-7.62" length="short" direction="pwr" rot="R90"/>
<pin name="DQ" x="10.16" y="2.54" length="short" direction="out" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="DS1820" prefix="IC">
<description>DS1820 - 1-Wire Digital Thermometer</description>
<gates>
<gate name="G$1" symbol="1820" x="0" y="0"/>
</gates>
<devices>
<device name="" package="TO-92">
<connects>
<connect gate="G$1" pin="DQ" pad="2"/>
<connect gate="G$1" pin="GND" pad="1"/>
<connect gate="G$1" pin="VDD" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="transistor-neu-to92" urn="urn:adsk.eagle:library:397">
<description>&lt;b&gt;NPN Transistors&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="TO92" urn="urn:adsk.eagle:footprint:28654/1" library_version="2">
<description>&lt;b&gt;TO 92&lt;/b&gt;</description>
<wire x1="-2.0946" y1="-1.651" x2="-2.6549" y2="-0.254" width="0.127" layer="21" curve="-32.78104"/>
<wire x1="-2.6549" y1="-0.254" x2="-0.7863" y2="2.5485" width="0.127" layer="21" curve="-78.318477"/>
<wire x1="0.7863" y1="2.5484" x2="2.0945" y2="-1.651" width="0.127" layer="21" curve="-111.09954"/>
<wire x1="-2.0945" y1="-1.651" x2="2.0945" y2="-1.651" width="0.127" layer="21"/>
<wire x1="-2.2537" y1="-0.254" x2="-0.2863" y2="-0.254" width="0.127" layer="51"/>
<wire x1="-2.6549" y1="-0.254" x2="-2.2537" y2="-0.254" width="0.127" layer="21"/>
<wire x1="-0.2863" y1="-0.254" x2="0.2863" y2="-0.254" width="0.127" layer="21"/>
<wire x1="2.2537" y1="-0.254" x2="2.6549" y2="-0.254" width="0.127" layer="21"/>
<wire x1="0.2863" y1="-0.254" x2="2.2537" y2="-0.254" width="0.127" layer="51"/>
<wire x1="-0.7863" y1="2.5485" x2="0.7863" y2="2.5485" width="0.127" layer="51" curve="-34.293591"/>
<pad name="1" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="0" y="1.905" drill="0.8128" shape="octagon"/>
<pad name="3" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="3.175" y="0.635" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="3.175" y="-1.27" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-0.635" y="0.635" size="1.27" layer="51" ratio="10">2</text>
<text x="-2.159" y="0" size="1.27" layer="51" ratio="10">3</text>
<text x="1.143" y="0" size="1.27" layer="51" ratio="10">1</text>
</package>
</packages>
<packages3d>
<package3d name="TO92" urn="urn:adsk.eagle:package:28725/1" type="box" library_version="2">
<description>TO 92</description>
</package3d>
</packages3d>
<symbols>
<symbol name="NPN" urn="urn:adsk.eagle:symbol:28649/1" library_version="2">
<wire x1="2.54" y1="2.54" x2="0.508" y2="1.524" width="0.1524" layer="94"/>
<wire x1="1.778" y1="-1.524" x2="2.54" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="2.54" y1="-2.54" x2="1.27" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="1.778" y2="-1.524" width="0.1524" layer="94"/>
<wire x1="1.54" y1="-2.04" x2="0.308" y2="-1.424" width="0.1524" layer="94"/>
<wire x1="1.524" y1="-2.413" x2="2.286" y2="-2.413" width="0.254" layer="94"/>
<wire x1="2.286" y1="-2.413" x2="1.778" y2="-1.778" width="0.254" layer="94"/>
<wire x1="1.778" y1="-1.778" x2="1.524" y2="-2.286" width="0.254" layer="94"/>
<wire x1="1.524" y1="-2.286" x2="1.905" y2="-2.286" width="0.254" layer="94"/>
<wire x1="1.905" y1="-2.286" x2="1.778" y2="-2.032" width="0.254" layer="94"/>
<text x="-10.16" y="7.62" size="1.778" layer="95">&gt;NAME</text>
<text x="-10.16" y="5.08" size="1.778" layer="96">&gt;VALUE</text>
<rectangle x1="-0.254" y1="-2.54" x2="0.508" y2="2.54" layer="94"/>
<pin name="B" x="-2.54" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
<pin name="E" x="2.54" y="-5.08" visible="off" length="short" direction="pas" swaplevel="3" rot="R90"/>
<pin name="C" x="2.54" y="5.08" visible="off" length="short" direction="pas" swaplevel="2" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="BC337" urn="urn:adsk.eagle:component:28779/1" prefix="T" library_version="2">
<description>&lt;b&gt;NPN TRANSISTOR&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="NPN" x="0" y="0"/>
</gates>
<devices>
<device name="" package="TO92">
<connects>
<connect gate="G$1" pin="B" pad="2"/>
<connect gate="G$1" pin="C" pad="3"/>
<connect gate="G$1" pin="E" pad="1"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:28725/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="U1" library="STM32F373" deviceset="STM32F373C_" device="T"/>
<part name="IC1" library="DS1820" deviceset="DS1820" device=""/>
<part name="T1" library="transistor-neu-to92" library_urn="urn:adsk.eagle:library:397" deviceset="BC337" device="" package3d_urn="urn:adsk.eagle:package:28725/1"/>
<part name="T2" library="transistor-neu-to92" library_urn="urn:adsk.eagle:library:397" deviceset="BC337" device="" package3d_urn="urn:adsk.eagle:package:28725/1"/>
<part name="T3" library="transistor-neu-to92" library_urn="urn:adsk.eagle:library:397" deviceset="BC337" device="" package3d_urn="urn:adsk.eagle:package:28725/1"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U1" gate="MISC" x="83.82" y="86.36"/>
<instance part="U1" gate="PA" x="30.48" y="86.36"/>
<instance part="U1" gate="PB" x="33.02" y="35.56"/>
<instance part="U1" gate="PCEF" x="83.82" y="33.02"/>
<instance part="IC1" gate="G$1" x="-7.62" y="83.82"/>
<instance part="T1" gate="G$1" x="-53.34" y="60.96"/>
<instance part="T2" gate="G$1" x="-53.34" y="43.18"/>
<instance part="T3" gate="G$1" x="-53.34" y="25.4"/>
</instances>
<busses>
</busses>
<nets>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
