<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.6.2">
<drawing>
<settings><setting alwaysvectorfont="no"/><setting verticaltext="up"/></settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers><layer number="1" name="Top" color="4" fill="1" visible="yes" active="yes"/><layer number="16" name="Bottom" color="1" fill="1" visible="yes" active="yes"/><layer number="17" name="Pads" color="2" fill="1" visible="yes" active="yes"/><layer number="18" name="Vias" color="2" fill="1" visible="yes" active="yes"/><layer number="19" name="Unrouted" color="6" fill="1" visible="yes" active="yes"/><layer number="20" name="Dimension" color="15" fill="1" visible="yes" active="yes"/><layer number="21" name="tPlace" color="7" fill="1" visible="yes" active="yes"/><layer number="22" name="bPlace" color="7" fill="1" visible="yes" active="yes"/><layer number="25" name="tNames" color="7" fill="1" visible="yes" active="yes"/><layer number="26" name="bNames" color="7" fill="1" visible="yes" active="yes"/><layer number="27" name="tValues" color="7" fill="1" visible="yes" active="yes"/><layer number="28" name="bValues" color="7" fill="1" visible="yes" active="yes"/><layer number="51" name="tDocu" color="7" fill="1" visible="yes" active="yes"/><layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/><layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/><layer number="93" name="Pins" color="2" fill="1" visible="yes" active="yes"/><layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/><layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/><layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/><layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/><layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/></layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<description>8-digit individually-triggered 74LS TTL pinball score counter</description>
<libraries>
<library name="pinball_ttl">
<packages>
<package name="DIP14">
<pad name="1" x="-7.62" y="-3.81" drill="0.8" shape="long" rot="R90"/>
<pad name="2" x="-5.08" y="-3.81" drill="0.8" shape="long" rot="R90"/>
<pad name="3" x="-2.54" y="-3.81" drill="0.8" shape="long" rot="R90"/>
<pad name="4" x="0" y="-3.81" drill="0.8" shape="long" rot="R90"/>
<pad name="5" x="2.54" y="-3.81" drill="0.8" shape="long" rot="R90"/>
<pad name="6" x="5.08" y="-3.81" drill="0.8" shape="long" rot="R90"/>
<pad name="7" x="7.62" y="-3.81" drill="0.8" shape="long" rot="R90"/>
<pad name="8" x="7.62" y="3.81" drill="0.8" shape="long" rot="R90"/>
<pad name="9" x="5.08" y="3.81" drill="0.8" shape="long" rot="R90"/>
<pad name="10" x="2.54" y="3.81" drill="0.8" shape="long" rot="R90"/>
<pad name="11" x="0" y="3.81" drill="0.8" shape="long" rot="R90"/>
<pad name="12" x="-2.54" y="3.81" drill="0.8" shape="long" rot="R90"/>
<pad name="13" x="-5.08" y="3.81" drill="0.8" shape="long" rot="R90"/>
<pad name="14" x="-7.62" y="3.81" drill="0.8" shape="long" rot="R90"/>
<wire x1="-8.89" y1="-2.8" x2="8.89" y2="-2.8" width="0.254" layer="21"/>
<wire x1="8.89" y1="-2.8" x2="8.89" y2="2.8" width="0.254" layer="21"/>
<wire x1="8.89" y1="2.8" x2="-8.89" y2="2.8" width="0.254" layer="21"/>
<wire x1="-8.89" y1="2.8" x2="-8.89" y2="-2.8" width="0.254" layer="21"/>
<text x="0" y="5.5" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
</package>
<package name="DIP16">
<pad name="1" x="-8.89" y="-3.81" drill="0.8" shape="long" rot="R90"/>
<pad name="2" x="-6.35" y="-3.81" drill="0.8" shape="long" rot="R90"/>
<pad name="3" x="-3.81" y="-3.81" drill="0.8" shape="long" rot="R90"/>
<pad name="4" x="-1.27" y="-3.81" drill="0.8" shape="long" rot="R90"/>
<pad name="5" x="1.27" y="-3.81" drill="0.8" shape="long" rot="R90"/>
<pad name="6" x="3.81" y="-3.81" drill="0.8" shape="long" rot="R90"/>
<pad name="7" x="6.35" y="-3.81" drill="0.8" shape="long" rot="R90"/>
<pad name="8" x="8.89" y="-3.81" drill="0.8" shape="long" rot="R90"/>
<pad name="9" x="8.89" y="3.81" drill="0.8" shape="long" rot="R90"/>
<pad name="10" x="6.35" y="3.81" drill="0.8" shape="long" rot="R90"/>
<pad name="11" x="3.81" y="3.81" drill="0.8" shape="long" rot="R90"/>
<pad name="12" x="1.27" y="3.81" drill="0.8" shape="long" rot="R90"/>
<pad name="13" x="-1.27" y="3.81" drill="0.8" shape="long" rot="R90"/>
<pad name="14" x="-3.81" y="3.81" drill="0.8" shape="long" rot="R90"/>
<pad name="15" x="-6.35" y="3.81" drill="0.8" shape="long" rot="R90"/>
<pad name="16" x="-8.89" y="3.81" drill="0.8" shape="long" rot="R90"/>
<wire x1="-10.16" y1="-2.8" x2="10.16" y2="-2.8" width="0.254" layer="21"/>
<wire x1="10.16" y1="-2.8" x2="10.16" y2="2.8" width="0.254" layer="21"/>
<wire x1="10.16" y1="2.8" x2="-10.16" y2="2.8" width="0.254" layer="21"/>
<wire x1="-10.16" y1="2.8" x2="-10.16" y2="-2.8" width="0.254" layer="21"/>
<text x="0" y="5.5" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
</package>
<package name="7SEG-056">
<pad name="1" x="-5.08" y="-7.62" drill="0.8" shape="long" rot="R90"/>
<pad name="2" x="-2.54" y="-7.62" drill="0.8" shape="long" rot="R90"/>
<pad name="3" x="0" y="-7.62" drill="0.8" shape="long" rot="R90"/>
<pad name="4" x="2.54" y="-7.62" drill="0.8" shape="long" rot="R90"/>
<pad name="5" x="5.08" y="-7.62" drill="0.8" shape="long" rot="R90"/>
<pad name="6" x="5.08" y="7.62" drill="0.8" shape="long" rot="R90"/>
<pad name="7" x="2.54" y="7.62" drill="0.8" shape="long" rot="R90"/>
<pad name="8" x="0" y="7.62" drill="0.8" shape="long" rot="R90"/>
<pad name="9" x="-2.54" y="7.62" drill="0.8" shape="long" rot="R90"/>
<pad name="10" x="-5.08" y="7.62" drill="0.8" shape="long" rot="R90"/>
<wire x1="-6.35" y1="-9.5" x2="6.35" y2="-9.5" width="0.254" layer="21"/>
<wire x1="6.35" y1="-9.5" x2="6.35" y2="9.5" width="0.254" layer="21"/>
<wire x1="6.35" y1="9.5" x2="-6.35" y2="9.5" width="0.254" layer="21"/>
<wire x1="-6.35" y1="9.5" x2="-6.35" y2="-9.5" width="0.254" layer="21"/>
<text x="0" y="10.5" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
</package>
<package name="1X10">
<pad name="1" x="-11.43" y="0" drill="0.8" shape="long" rot="R90"/>
<pad name="2" x="-8.89" y="0" drill="0.8" shape="long" rot="R90"/>
<pad name="3" x="-6.35" y="0" drill="0.8" shape="long" rot="R90"/>
<pad name="4" x="-3.81" y="0" drill="0.8" shape="long" rot="R90"/>
<pad name="5" x="-1.27" y="0" drill="0.8" shape="long" rot="R90"/>
<pad name="6" x="1.27" y="0" drill="0.8" shape="long" rot="R90"/>
<pad name="7" x="3.81" y="0" drill="0.8" shape="long" rot="R90"/>
<pad name="8" x="6.35" y="0" drill="0.8" shape="long" rot="R90"/>
<pad name="9" x="8.89" y="0" drill="0.8" shape="long" rot="R90"/>
<pad name="10" x="11.43" y="0" drill="0.8" shape="long" rot="R90"/>
<wire x1="-12.7" y1="-1.27" x2="12.7" y2="-1.27" width="0.254" layer="21"/>
<wire x1="12.7" y1="-1.27" x2="12.7" y2="1.27" width="0.254" layer="21"/>
<wire x1="12.7" y1="1.27" x2="-12.7" y2="1.27" width="0.254" layer="21"/>
<wire x1="-12.7" y1="1.27" x2="-12.7" y2="-1.27" width="0.254" layer="21"/>
<text x="0" y="2.5" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
</package>
<package name="1X02">
<pad name="1" x="-1.27" y="0" drill="0.8" shape="long" rot="R90"/>
<pad name="2" x="1.27" y="0" drill="0.8" shape="long" rot="R90"/>
<wire x1="-2.54" y1="-1.27" x2="2.54" y2="-1.27" width="0.254" layer="21"/>
<wire x1="2.54" y1="-1.27" x2="2.54" y2="1.27" width="0.254" layer="21"/>
<wire x1="2.54" y1="1.27" x2="-2.54" y2="1.27" width="0.254" layer="21"/>
<wire x1="-2.54" y1="1.27" x2="-2.54" y2="-1.27" width="0.254" layer="21"/>
<text x="0" y="2.5" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
</package>
<package name="TACT6MM">
<pad name="1" x="-3.25" y="2.25" drill="0.8" shape="round"/>
<pad name="2" x="3.25" y="2.25" drill="0.8" shape="round"/>
<pad name="3" x="-3.25" y="-2.25" drill="0.8" shape="round"/>
<pad name="4" x="3.25" y="-2.25" drill="0.8" shape="round"/>
<wire x1="-3" y1="-3" x2="3" y2="-3" width="0.254" layer="21"/>
<wire x1="3" y1="-3" x2="3" y2="3" width="0.254" layer="21"/>
<wire x1="3" y1="3" x2="-3" y2="3" width="0.254" layer="21"/>
<wire x1="-3" y1="3" x2="-3" y2="-3" width="0.254" layer="21"/>
<text x="0" y="3.8" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
</package>
<package name="0207/10">
<pad name="1" x="-5.08" y="0" drill="0.8" shape="round"/>
<pad name="2" x="5.08" y="0" drill="0.8" shape="round"/>
<wire x1="-3.25" y1="-1.2" x2="3.25" y2="-1.2" width="0.254" layer="21"/>
<wire x1="3.25" y1="-1.2" x2="3.25" y2="1.2" width="0.254" layer="21"/>
<wire x1="3.25" y1="1.2" x2="-3.25" y2="1.2" width="0.254" layer="21"/>
<wire x1="-3.25" y1="1.2" x2="-3.25" y2="-1.2" width="0.254" layer="21"/>
<text x="0" y="2" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
</package>
<package name="C2.5">
<pad name="1" x="-1.27" y="0" drill="0.8" shape="round"/>
<pad name="2" x="1.27" y="0" drill="0.8" shape="round"/>
<wire x1="-2" y1="-1.2" x2="2" y2="-1.2" width="0.254" layer="21"/>
<wire x1="2" y1="-1.2" x2="2" y2="1.2" width="0.254" layer="21"/>
<wire x1="2" y1="1.2" x2="-2" y2="1.2" width="0.254" layer="21"/>
<wire x1="-2" y1="1.2" x2="-2" y2="-1.2" width="0.254" layer="21"/>
<text x="0" y="2" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
</package>
<package name="E2.5-6">
<pad name="1" x="-1.27" y="0" drill="0.8" shape="round"/>
<pad name="2" x="1.27" y="0" drill="0.8" shape="round"/>
<wire x1="-3" y1="-3" x2="3" y2="-3" width="0.254" layer="21"/>
<wire x1="3" y1="-3" x2="3" y2="3" width="0.254" layer="21"/>
<wire x1="3" y1="3" x2="-3" y2="3" width="0.254" layer="21"/>
<wire x1="-3" y1="3" x2="-3" y2="-3" width="0.254" layer="21"/>
<text x="0" y="3.8" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
</package>
</packages>
<symbols>
<symbol name="R">
<wire x1="-2.54" y1="-0.889" x2="2.54" y2="-0.889" width="0.254" layer="94"/>
<wire x1="2.54" y1="-0.889" x2="2.54" y2="0.889" width="0.254" layer="94"/>
<wire x1="2.54" y1="0.889" x2="-2.54" y2="0.889" width="0.254" layer="94"/>
<wire x1="-2.54" y1="0.889" x2="-2.54" y2="-0.889" width="0.254" layer="94"/>
<text x="-2.54" y="1.8" size="1.778" layer="95">&gt;NAME</text>
<text x="-2.54" y="-3.6" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-5.08" y="0" visible="off" length="short" direction="pas"/>
<pin name="2" x="5.08" y="0" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
<symbol name="C">
<wire x1="-2.54" y1="0" x2="-0.508" y2="0" width="0.254" layer="94"/>
<wire x1="0.508" y1="0" x2="2.54" y2="0" width="0.254" layer="94"/>
<wire x1="-0.508" y1="-1.524" x2="-0.508" y2="1.524" width="0.4064" layer="94"/>
<wire x1="0.508" y1="-1.524" x2="0.508" y2="1.524" width="0.4064" layer="94"/>
<text x="-2.54" y="1.8" size="1.778" layer="95">&gt;NAME</text>
<text x="-2.54" y="-3.6" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-5.08" y="0" visible="off" length="short" direction="pas"/>
<pin name="2" x="5.08" y="0" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
<symbol name="PUSHBUTTON">
<wire x1="-2.54" y1="0" x2="2.032" y2="1.524" width="0.254" layer="94"/>
<wire x1="-1.27" y1="2.54" x2="1.27" y2="2.54" width="0.254" layer="94"/>
<wire x1="0" y1="2.54" x2="0" y2="1" width="0.254" layer="94"/>
<text x="-2.54" y="1.8" size="1.778" layer="95">&gt;NAME</text>
<text x="-2.54" y="-3.6" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-5.08" y="0" visible="off" length="short" direction="pas"/>
<pin name="2" x="5.08" y="0" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
<symbol name="74LS192">
<wire x1="-7.62" y1="12.7" x2="7.62" y2="12.7" width="0.4064" layer="94"/>
<wire x1="7.62" y1="12.7" x2="7.62" y2="-15.24" width="0.4064" layer="94"/>
<wire x1="7.62" y1="-15.24" x2="-7.62" y2="-15.24" width="0.4064" layer="94"/>
<wire x1="-7.62" y1="-15.24" x2="-7.62" y2="12.7" width="0.4064" layer="94"/>
<text x="-7.62" y="13.2" size="1.778" layer="95">&gt;NAME</text>
<text x="-7.62" y="-17.74" size="1.778" layer="96">&gt;VALUE</text>
<pin name="CPU" x="-12.7" y="10.16" length="middle" direction="in"/>
<pin name="CPD" x="-12.7" y="7.62" length="middle" direction="in"/>
<pin name="!PL" x="-12.7" y="5.08" length="middle" direction="in"/>
<pin name="MR" x="-12.7" y="2.54" length="middle" direction="in"/>
<pin name="P0" x="-12.7" y="0" length="middle" direction="in"/>
<pin name="P1" x="-12.7" y="-2.54" length="middle" direction="in"/>
<pin name="P2" x="-12.7" y="-5.08" length="middle" direction="in"/>
<pin name="P3" x="-12.7" y="-7.62" length="middle" direction="in"/>
<pin name="VCC" x="-12.7" y="-10.16" length="middle" direction="pwr"/>
<pin name="GND" x="-12.7" y="-12.7" length="middle" direction="pwr"/>
<pin name="Q0" x="12.7" y="10.16" length="middle" direction="out" rot="R180"/>
<pin name="Q1" x="12.7" y="7.62" length="middle" direction="out" rot="R180"/>
<pin name="Q2" x="12.7" y="5.08" length="middle" direction="out" rot="R180"/>
<pin name="Q3" x="12.7" y="2.54" length="middle" direction="out" rot="R180"/>
<pin name="!TCU" x="12.7" y="0" length="middle" direction="out" rot="R180"/>
<pin name="!TCD" x="12.7" y="-2.54" length="middle" direction="out" rot="R180"/>
</symbol>
<symbol name="74LS47">
<wire x1="-7.62" y1="10.16" x2="7.62" y2="10.16" width="0.4064" layer="94"/>
<wire x1="7.62" y1="10.16" x2="7.62" y2="-12.7" width="0.4064" layer="94"/>
<wire x1="7.62" y1="-12.7" x2="-7.62" y2="-12.7" width="0.4064" layer="94"/>
<wire x1="-7.62" y1="-12.7" x2="-7.62" y2="10.16" width="0.4064" layer="94"/>
<text x="-7.62" y="10.66" size="1.778" layer="95">&gt;NAME</text>
<text x="-7.62" y="-15.2" size="1.778" layer="96">&gt;VALUE</text>
<pin name="A" x="-12.7" y="7.62" length="middle" direction="in"/>
<pin name="B" x="-12.7" y="5.08" length="middle" direction="in"/>
<pin name="C" x="-12.7" y="2.54" length="middle" direction="in"/>
<pin name="D" x="-12.7" y="0" length="middle" direction="in"/>
<pin name="!LT" x="-12.7" y="-2.54" length="middle" direction="in"/>
<pin name="!RBI" x="-12.7" y="-5.08" length="middle" direction="in"/>
<pin name="VCC" x="-12.7" y="-7.62" length="middle" direction="pwr"/>
<pin name="GND" x="-12.7" y="-10.16" length="middle" direction="pwr"/>
<pin name="SEG_A" x="12.7" y="7.62" length="middle" direction="oc" rot="R180"/>
<pin name="SEG_B" x="12.7" y="5.08" length="middle" direction="oc" rot="R180"/>
<pin name="SEG_C" x="12.7" y="2.54" length="middle" direction="oc" rot="R180"/>
<pin name="SEG_D" x="12.7" y="0" length="middle" direction="oc" rot="R180"/>
<pin name="SEG_E" x="12.7" y="-2.54" length="middle" direction="oc" rot="R180"/>
<pin name="SEG_F" x="12.7" y="-5.08" length="middle" direction="oc" rot="R180"/>
<pin name="SEG_G" x="12.7" y="-7.62" length="middle" direction="oc" rot="R180"/>
<pin name="!BI/!RBO" x="12.7" y="-10.16" length="middle" direction="io" rot="R180"/>
</symbol>
<symbol name="74LS08">
<wire x1="-7.62" y1="12.7" x2="7.62" y2="12.7" width="0.4064" layer="94"/>
<wire x1="7.62" y1="12.7" x2="7.62" y2="-15.24" width="0.4064" layer="94"/>
<wire x1="7.62" y1="-15.24" x2="-7.62" y2="-15.24" width="0.4064" layer="94"/>
<wire x1="-7.62" y1="-15.24" x2="-7.62" y2="12.7" width="0.4064" layer="94"/>
<text x="-7.62" y="13.2" size="1.778" layer="95">&gt;NAME</text>
<text x="-7.62" y="-17.74" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1A" x="-12.7" y="10.16" length="middle" direction="in"/>
<pin name="1B" x="-12.7" y="7.62" length="middle" direction="in"/>
<pin name="2A" x="-12.7" y="5.08" length="middle" direction="in"/>
<pin name="2B" x="-12.7" y="2.54" length="middle" direction="in"/>
<pin name="3A" x="-12.7" y="0" length="middle" direction="in"/>
<pin name="3B" x="-12.7" y="-2.54" length="middle" direction="in"/>
<pin name="4A" x="-12.7" y="-5.08" length="middle" direction="in"/>
<pin name="4B" x="-12.7" y="-7.62" length="middle" direction="in"/>
<pin name="VCC" x="-12.7" y="-10.16" length="middle" direction="pwr"/>
<pin name="GND" x="-12.7" y="-12.7" length="middle" direction="pwr"/>
<pin name="1Y" x="12.7" y="10.16" length="middle" direction="out" rot="R180"/>
<pin name="2Y" x="12.7" y="7.62" length="middle" direction="out" rot="R180"/>
<pin name="3Y" x="12.7" y="5.08" length="middle" direction="out" rot="R180"/>
<pin name="4Y" x="12.7" y="2.54" length="middle" direction="out" rot="R180"/>
</symbol>
<symbol name="74LS221">
<wire x1="-7.62" y1="15.24" x2="7.62" y2="15.24" width="0.4064" layer="94"/>
<wire x1="7.62" y1="15.24" x2="7.62" y2="-17.78" width="0.4064" layer="94"/>
<wire x1="7.62" y1="-17.78" x2="-7.62" y2="-17.78" width="0.4064" layer="94"/>
<wire x1="-7.62" y1="-17.78" x2="-7.62" y2="15.24" width="0.4064" layer="94"/>
<text x="-7.62" y="15.74" size="1.778" layer="95">&gt;NAME</text>
<text x="-7.62" y="-20.28" size="1.778" layer="96">&gt;VALUE</text>
<pin name="!1A" x="-12.7" y="12.7" length="middle" direction="in"/>
<pin name="1B" x="-12.7" y="10.16" length="middle" direction="in"/>
<pin name="!1CLR" x="-12.7" y="7.62" length="middle" direction="in"/>
<pin name="1CEXT" x="-12.7" y="5.08" length="middle" direction="pas"/>
<pin name="1REXT/CEXT" x="-12.7" y="2.54" length="middle" direction="pas"/>
<pin name="!2A" x="-12.7" y="0" length="middle" direction="in"/>
<pin name="2B" x="-12.7" y="-2.54" length="middle" direction="in"/>
<pin name="!2CLR" x="-12.7" y="-5.08" length="middle" direction="in"/>
<pin name="2CEXT" x="-12.7" y="-7.62" length="middle" direction="pas"/>
<pin name="2REXT/CEXT" x="-12.7" y="-10.16" length="middle" direction="pas"/>
<pin name="VCC" x="-12.7" y="-12.7" length="middle" direction="pwr"/>
<pin name="GND" x="-12.7" y="-15.24" length="middle" direction="pwr"/>
<pin name="1Q" x="12.7" y="12.7" length="middle" direction="out" rot="R180"/>
<pin name="!1Q" x="12.7" y="10.16" length="middle" direction="out" rot="R180"/>
<pin name="2Q" x="12.7" y="7.62" length="middle" direction="out" rot="R180"/>
<pin name="!2Q" x="12.7" y="5.08" length="middle" direction="out" rot="R180"/>
</symbol>
<symbol name="74LS14">
<wire x1="-7.62" y1="10.16" x2="7.62" y2="10.16" width="0.4064" layer="94"/>
<wire x1="7.62" y1="10.16" x2="7.62" y2="-12.7" width="0.4064" layer="94"/>
<wire x1="7.62" y1="-12.7" x2="-7.62" y2="-12.7" width="0.4064" layer="94"/>
<wire x1="-7.62" y1="-12.7" x2="-7.62" y2="10.16" width="0.4064" layer="94"/>
<text x="-7.62" y="10.66" size="1.778" layer="95">&gt;NAME</text>
<text x="-7.62" y="-15.2" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1A" x="-12.7" y="7.62" length="middle" direction="in"/>
<pin name="2A" x="-12.7" y="5.08" length="middle" direction="in"/>
<pin name="3A" x="-12.7" y="2.54" length="middle" direction="in"/>
<pin name="4A" x="-12.7" y="0" length="middle" direction="in"/>
<pin name="5A" x="-12.7" y="-2.54" length="middle" direction="in"/>
<pin name="6A" x="-12.7" y="-5.08" length="middle" direction="in"/>
<pin name="VCC" x="-12.7" y="-7.62" length="middle" direction="pwr"/>
<pin name="GND" x="-12.7" y="-10.16" length="middle" direction="pwr"/>
<pin name="1Y" x="12.7" y="7.62" length="middle" direction="out" rot="R180"/>
<pin name="2Y" x="12.7" y="5.08" length="middle" direction="out" rot="R180"/>
<pin name="3Y" x="12.7" y="2.54" length="middle" direction="out" rot="R180"/>
<pin name="4Y" x="12.7" y="0" length="middle" direction="out" rot="R180"/>
<pin name="5Y" x="12.7" y="-2.54" length="middle" direction="out" rot="R180"/>
<pin name="6Y" x="12.7" y="-5.08" length="middle" direction="out" rot="R180"/>
</symbol>
<symbol name="7SEG-CA">
<wire x1="-7.62" y1="10.16" x2="7.62" y2="10.16" width="0.4064" layer="94"/>
<wire x1="7.62" y1="10.16" x2="7.62" y2="-12.7" width="0.4064" layer="94"/>
<wire x1="7.62" y1="-12.7" x2="-7.62" y2="-12.7" width="0.4064" layer="94"/>
<wire x1="-7.62" y1="-12.7" x2="-7.62" y2="10.16" width="0.4064" layer="94"/>
<text x="-7.62" y="10.66" size="1.778" layer="95">&gt;NAME</text>
<text x="-7.62" y="-15.2" size="1.778" layer="96">&gt;VALUE</text>
<pin name="A" x="-12.7" y="7.62" length="middle" direction="pas"/>
<pin name="B" x="-12.7" y="5.08" length="middle" direction="pas"/>
<pin name="C" x="-12.7" y="2.54" length="middle" direction="pas"/>
<pin name="D" x="-12.7" y="0" length="middle" direction="pas"/>
<pin name="E" x="-12.7" y="-2.54" length="middle" direction="pas"/>
<pin name="F" x="-12.7" y="-5.08" length="middle" direction="pas"/>
<pin name="G" x="-12.7" y="-7.62" length="middle" direction="pas"/>
<pin name="DP" x="-12.7" y="-10.16" length="middle" direction="pas"/>
<pin name="CA" x="12.7" y="7.62" length="middle" direction="pas" rot="R180"/>
</symbol>
<symbol name="HEADER-10">
<wire x1="-7.62" y1="12.7" x2="7.62" y2="12.7" width="0.4064" layer="94"/>
<wire x1="7.62" y1="12.7" x2="7.62" y2="-15.24" width="0.4064" layer="94"/>
<wire x1="7.62" y1="-15.24" x2="-7.62" y2="-15.24" width="0.4064" layer="94"/>
<wire x1="-7.62" y1="-15.24" x2="-7.62" y2="12.7" width="0.4064" layer="94"/>
<text x="-7.62" y="13.2" size="1.778" layer="95">&gt;NAME</text>
<text x="-7.62" y="-17.74" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="12.7" y="10.16" length="middle" direction="pas" rot="R180"/>
<pin name="2" x="12.7" y="7.62" length="middle" direction="pas" rot="R180"/>
<pin name="3" x="12.7" y="5.08" length="middle" direction="pas" rot="R180"/>
<pin name="4" x="12.7" y="2.54" length="middle" direction="pas" rot="R180"/>
<pin name="5" x="12.7" y="0" length="middle" direction="pas" rot="R180"/>
<pin name="6" x="12.7" y="-2.54" length="middle" direction="pas" rot="R180"/>
<pin name="7" x="12.7" y="-5.08" length="middle" direction="pas" rot="R180"/>
<pin name="8" x="12.7" y="-7.62" length="middle" direction="pas" rot="R180"/>
<pin name="9" x="12.7" y="-10.16" length="middle" direction="pas" rot="R180"/>
<pin name="10" x="12.7" y="-12.7" length="middle" direction="pas" rot="R180"/>
</symbol>
<symbol name="HEADER-2">
<wire x1="-7.62" y1="2.54" x2="7.62" y2="2.54" width="0.4064" layer="94"/>
<wire x1="7.62" y1="2.54" x2="7.62" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="7.62" y1="-5.08" x2="-7.62" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="-7.62" y1="-5.08" x2="-7.62" y2="2.54" width="0.4064" layer="94"/>
<text x="-7.62" y="3.04" size="1.778" layer="95">&gt;NAME</text>
<text x="-7.62" y="-7.58" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="12.7" y="0" length="middle" direction="pas" rot="R180"/>
<pin name="2" x="12.7" y="-2.54" length="middle" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="74LS192" prefix="U">
<description>Synchronous BCD up/down decade counter</description>
<gates><gate name="G$1" symbol="74LS192" x="0" y="0"/></gates>
<devices>
<device name="N" package="DIP16"><connects>
<connect gate="G$1" pin="P1" pad="1"/>
<connect gate="G$1" pin="Q1" pad="2"/>
<connect gate="G$1" pin="Q0" pad="3"/>
<connect gate="G$1" pin="CPD" pad="4"/>
<connect gate="G$1" pin="CPU" pad="5"/>
<connect gate="G$1" pin="Q2" pad="6"/>
<connect gate="G$1" pin="Q3" pad="7"/>
<connect gate="G$1" pin="GND" pad="8"/>
<connect gate="G$1" pin="P3" pad="9"/>
<connect gate="G$1" pin="P2" pad="10"/>
<connect gate="G$1" pin="!PL" pad="11"/>
<connect gate="G$1" pin="!TCU" pad="12"/>
<connect gate="G$1" pin="!TCD" pad="13"/>
<connect gate="G$1" pin="MR" pad="14"/>
<connect gate="G$1" pin="P0" pad="15"/>
<connect gate="G$1" pin="VCC" pad="16"/>
</connects><technologies><technology name=""/></technologies></device>
</devices></deviceset>
<deviceset name="74LS47" prefix="U">
<description>BCD to 7-segment decoder/driver, open collector</description>
<gates><gate name="G$1" symbol="74LS47" x="0" y="0"/></gates>
<devices>
<device name="N" package="DIP16"><connects>
<connect gate="G$1" pin="B" pad="1"/>
<connect gate="G$1" pin="C" pad="2"/>
<connect gate="G$1" pin="!LT" pad="3"/>
<connect gate="G$1" pin="!BI/!RBO" pad="4"/>
<connect gate="G$1" pin="!RBI" pad="5"/>
<connect gate="G$1" pin="D" pad="6"/>
<connect gate="G$1" pin="A" pad="7"/>
<connect gate="G$1" pin="GND" pad="8"/>
<connect gate="G$1" pin="SEG_E" pad="9"/>
<connect gate="G$1" pin="SEG_D" pad="10"/>
<connect gate="G$1" pin="SEG_C" pad="11"/>
<connect gate="G$1" pin="SEG_B" pad="12"/>
<connect gate="G$1" pin="SEG_A" pad="13"/>
<connect gate="G$1" pin="SEG_G" pad="14"/>
<connect gate="G$1" pin="SEG_F" pad="15"/>
<connect gate="G$1" pin="VCC" pad="16"/>
</connects><technologies><technology name=""/></technologies></device>
</devices></deviceset>
<deviceset name="74LS08" prefix="U">
<description>Quad 2-input AND</description>
<gates><gate name="G$1" symbol="74LS08" x="0" y="0"/></gates>
<devices>
<device name="N" package="DIP14"><connects>
<connect gate="G$1" pin="1A" pad="1"/>
<connect gate="G$1" pin="1B" pad="2"/>
<connect gate="G$1" pin="1Y" pad="3"/>
<connect gate="G$1" pin="2A" pad="4"/>
<connect gate="G$1" pin="2B" pad="5"/>
<connect gate="G$1" pin="2Y" pad="6"/>
<connect gate="G$1" pin="GND" pad="7"/>
<connect gate="G$1" pin="3Y" pad="8"/>
<connect gate="G$1" pin="3A" pad="9"/>
<connect gate="G$1" pin="3B" pad="10"/>
<connect gate="G$1" pin="4Y" pad="11"/>
<connect gate="G$1" pin="4A" pad="12"/>
<connect gate="G$1" pin="4B" pad="13"/>
<connect gate="G$1" pin="VCC" pad="14"/>
</connects><technologies><technology name=""/></technologies></device>
</devices></deviceset>
<deviceset name="74LS221" prefix="U">
<description>Dual non-retriggerable monostable</description>
<gates><gate name="G$1" symbol="74LS221" x="0" y="0"/></gates>
<devices>
<device name="N" package="DIP16"><connects>
<connect gate="G$1" pin="!1A" pad="1"/>
<connect gate="G$1" pin="1B" pad="2"/>
<connect gate="G$1" pin="!1CLR" pad="3"/>
<connect gate="G$1" pin="!1Q" pad="4"/>
<connect gate="G$1" pin="2Q" pad="5"/>
<connect gate="G$1" pin="2CEXT" pad="6"/>
<connect gate="G$1" pin="2REXT/CEXT" pad="7"/>
<connect gate="G$1" pin="GND" pad="8"/>
<connect gate="G$1" pin="!2A" pad="9"/>
<connect gate="G$1" pin="2B" pad="10"/>
<connect gate="G$1" pin="!2CLR" pad="11"/>
<connect gate="G$1" pin="!2Q" pad="12"/>
<connect gate="G$1" pin="1Q" pad="13"/>
<connect gate="G$1" pin="1CEXT" pad="14"/>
<connect gate="G$1" pin="1REXT/CEXT" pad="15"/>
<connect gate="G$1" pin="VCC" pad="16"/>
</connects><technologies><technology name=""/></technologies></device>
</devices></deviceset>
<deviceset name="74LS14" prefix="U">
<description>Hex Schmitt-trigger inverter</description>
<gates><gate name="G$1" symbol="74LS14" x="0" y="0"/></gates>
<devices>
<device name="N" package="DIP14"><connects>
<connect gate="G$1" pin="1A" pad="1"/>
<connect gate="G$1" pin="1Y" pad="2"/>
<connect gate="G$1" pin="2A" pad="3"/>
<connect gate="G$1" pin="2Y" pad="4"/>
<connect gate="G$1" pin="3A" pad="5"/>
<connect gate="G$1" pin="3Y" pad="6"/>
<connect gate="G$1" pin="GND" pad="7"/>
<connect gate="G$1" pin="4Y" pad="8"/>
<connect gate="G$1" pin="4A" pad="9"/>
<connect gate="G$1" pin="5Y" pad="10"/>
<connect gate="G$1" pin="5A" pad="11"/>
<connect gate="G$1" pin="6Y" pad="12"/>
<connect gate="G$1" pin="6A" pad="13"/>
<connect gate="G$1" pin="VCC" pad="14"/>
</connects><technologies><technology name=""/></technologies></device>
</devices></deviceset>
<deviceset name="7SEG-CA" prefix="DS" uservalue="yes">
<description>0.56in common-anode 7-segment display (5161BS / SA56-11 pinout)</description>
<gates><gate name="G$1" symbol="7SEG-CA" x="0" y="0"/></gates>
<devices>
<device name="" package="7SEG-056"><connects>
<connect gate="G$1" pin="E" pad="1"/>
<connect gate="G$1" pin="D" pad="2"/>
<connect gate="G$1" pin="CA" pad="3 8"/>
<connect gate="G$1" pin="C" pad="4"/>
<connect gate="G$1" pin="DP" pad="5"/>
<connect gate="G$1" pin="B" pad="6"/>
<connect gate="G$1" pin="A" pad="7"/>
<connect gate="G$1" pin="F" pad="9"/>
<connect gate="G$1" pin="G" pad="10"/>
</connects><technologies><technology name=""/></technologies></device>
</devices></deviceset>
<deviceset name="HEADER-10" prefix="J">
<description>1x10 0.1in header</description>
<gates><gate name="G$1" symbol="HEADER-10" x="0" y="0"/></gates>
<devices>
<device name="" package="1X10"><connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
<connect gate="G$1" pin="9" pad="9"/>
<connect gate="G$1" pin="10" pad="10"/>
</connects><technologies><technology name=""/></technologies></device>
</devices></deviceset>
<deviceset name="HEADER-2" prefix="J">
<description>1x2 0.1in header</description>
<gates><gate name="G$1" symbol="HEADER-2" x="0" y="0"/></gates>
<devices>
<device name="" package="1X02"><connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects><technologies><technology name=""/></technologies></device>
</devices></deviceset>
<deviceset name="R" prefix="R" uservalue="yes">
<description>Resistor</description>
<gates><gate name="G$1" symbol="R" x="0" y="0"/></gates>
<devices>
<device name="" package="0207/10"><connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects><technologies><technology name=""/></technologies></device>
</devices></deviceset>
<deviceset name="C" prefix="C" uservalue="yes">
<description>Capacitor, non-polarised</description>
<gates><gate name="G$1" symbol="C" x="0" y="0"/></gates>
<devices>
<device name="" package="C2.5"><connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects><technologies><technology name=""/></technologies></device>
</devices></deviceset>
<deviceset name="CPOL" prefix="C" uservalue="yes">
<description>Electrolytic capacitor, pin 1 = +</description>
<gates><gate name="G$1" symbol="C" x="0" y="0"/></gates>
<devices>
<device name="" package="E2.5-6"><connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects><technologies><technology name=""/></technologies></device>
</devices></deviceset>
<deviceset name="PUSHBUTTON" prefix="S">
<description>6mm tactile switch</description>
<gates><gate name="G$1" symbol="PUSHBUTTON" x="0" y="0"/></gates>
<devices>
<device name="" package="TACT6MM"><connects>
<connect gate="G$1" pin="1" pad="1 2"/>
<connect gate="G$1" pin="2" pad="3 4"/>
</connects><technologies><technology name=""/></technologies></device>
</devices></deviceset>
</devicesets>
</library>
</libraries>
<attributes/>
<variantdefs/>
<classes><class number="0" name="default" width="0" drill="0"/></classes>
<parts>
<part name="J1" library="pinball_ttl" deviceset="HEADER-10" device="" value="SWITCHES"/>
<part name="J2" library="pinball_ttl" deviceset="HEADER-2" device="" value="+5V IN"/>
<part name="U19" library="pinball_ttl" deviceset="74LS221" device="N" value="74LS221"/>
<part name="U20" library="pinball_ttl" deviceset="74LS221" device="N" value="74LS221"/>
<part name="U21" library="pinball_ttl" deviceset="74LS221" device="N" value="74LS221"/>
<part name="U22" library="pinball_ttl" deviceset="74LS221" device="N" value="74LS221"/>
<part name="R1" library="pinball_ttl" deviceset="R" device="" value="4.7k"/>
<part name="R9" library="pinball_ttl" deviceset="R" device="" value="33k"/>
<part name="C1" library="pinball_ttl" deviceset="C" device="" value="1uF"/>
<part name="R2" library="pinball_ttl" deviceset="R" device="" value="4.7k"/>
<part name="R10" library="pinball_ttl" deviceset="R" device="" value="33k"/>
<part name="C2" library="pinball_ttl" deviceset="C" device="" value="1uF"/>
<part name="R3" library="pinball_ttl" deviceset="R" device="" value="4.7k"/>
<part name="R11" library="pinball_ttl" deviceset="R" device="" value="33k"/>
<part name="C3" library="pinball_ttl" deviceset="C" device="" value="1uF"/>
<part name="R4" library="pinball_ttl" deviceset="R" device="" value="4.7k"/>
<part name="R12" library="pinball_ttl" deviceset="R" device="" value="33k"/>
<part name="C4" library="pinball_ttl" deviceset="C" device="" value="1uF"/>
<part name="R5" library="pinball_ttl" deviceset="R" device="" value="4.7k"/>
<part name="R13" library="pinball_ttl" deviceset="R" device="" value="33k"/>
<part name="C5" library="pinball_ttl" deviceset="C" device="" value="1uF"/>
<part name="R6" library="pinball_ttl" deviceset="R" device="" value="4.7k"/>
<part name="R14" library="pinball_ttl" deviceset="R" device="" value="33k"/>
<part name="C6" library="pinball_ttl" deviceset="C" device="" value="1uF"/>
<part name="R7" library="pinball_ttl" deviceset="R" device="" value="4.7k"/>
<part name="R15" library="pinball_ttl" deviceset="R" device="" value="33k"/>
<part name="C7" library="pinball_ttl" deviceset="C" device="" value="1uF"/>
<part name="R8" library="pinball_ttl" deviceset="R" device="" value="4.7k"/>
<part name="R16" library="pinball_ttl" deviceset="R" device="" value="33k"/>
<part name="C8" library="pinball_ttl" deviceset="C" device="" value="1uF"/>
<part name="S1" library="pinball_ttl" deviceset="PUSHBUTTON" device="" value="RESET"/>
<part name="R73" library="pinball_ttl" deviceset="R" device="" value="4.7k"/>
<part name="C9" library="pinball_ttl" deviceset="CPOL" device="" value="10uF"/>
<part name="U23" library="pinball_ttl" deviceset="74LS14" device="N" value="74LS14"/>
<part name="C10" library="pinball_ttl" deviceset="C" device="" value="100nF"/>
<part name="C11" library="pinball_ttl" deviceset="C" device="" value="100nF"/>
<part name="C12" library="pinball_ttl" deviceset="C" device="" value="100nF"/>
<part name="C13" library="pinball_ttl" deviceset="C" device="" value="100nF"/>
<part name="C14" library="pinball_ttl" deviceset="C" device="" value="100nF"/>
<part name="C15" library="pinball_ttl" deviceset="C" device="" value="100nF"/>
<part name="C16" library="pinball_ttl" deviceset="C" device="" value="100nF"/>
<part name="C17" library="pinball_ttl" deviceset="C" device="" value="100nF"/>
<part name="C18" library="pinball_ttl" deviceset="C" device="" value="100nF"/>
<part name="C19" library="pinball_ttl" deviceset="C" device="" value="100nF"/>
<part name="C20" library="pinball_ttl" deviceset="C" device="" value="100nF"/>
<part name="C21" library="pinball_ttl" deviceset="C" device="" value="100nF"/>
<part name="C22" library="pinball_ttl" deviceset="C" device="" value="100nF"/>
<part name="C23" library="pinball_ttl" deviceset="C" device="" value="100nF"/>
<part name="C24" library="pinball_ttl" deviceset="C" device="" value="100nF"/>
<part name="C25" library="pinball_ttl" deviceset="C" device="" value="100nF"/>
<part name="C26" library="pinball_ttl" deviceset="C" device="" value="100nF"/>
<part name="C27" library="pinball_ttl" deviceset="C" device="" value="100nF"/>
<part name="C28" library="pinball_ttl" deviceset="C" device="" value="100nF"/>
<part name="C29" library="pinball_ttl" deviceset="C" device="" value="100nF"/>
<part name="C30" library="pinball_ttl" deviceset="C" device="" value="100nF"/>
<part name="C31" library="pinball_ttl" deviceset="C" device="" value="100nF"/>
<part name="C32" library="pinball_ttl" deviceset="C" device="" value="100nF"/>
<part name="C33" library="pinball_ttl" deviceset="CPOL" device="" value="100uF"/>
<part name="U1" library="pinball_ttl" deviceset="74LS192" device="N" value="74LS192"/>
<part name="U2" library="pinball_ttl" deviceset="74LS192" device="N" value="74LS192"/>
<part name="U3" library="pinball_ttl" deviceset="74LS192" device="N" value="74LS192"/>
<part name="U4" library="pinball_ttl" deviceset="74LS192" device="N" value="74LS192"/>
<part name="U5" library="pinball_ttl" deviceset="74LS192" device="N" value="74LS192"/>
<part name="U6" library="pinball_ttl" deviceset="74LS192" device="N" value="74LS192"/>
<part name="U7" library="pinball_ttl" deviceset="74LS192" device="N" value="74LS192"/>
<part name="U8" library="pinball_ttl" deviceset="74LS192" device="N" value="74LS192"/>
<part name="U17" library="pinball_ttl" deviceset="74LS08" device="N" value="74LS08"/>
<part name="U18" library="pinball_ttl" deviceset="74LS08" device="N" value="74LS08"/>
<part name="U9" library="pinball_ttl" deviceset="74LS47" device="N" value="74LS47"/>
<part name="R17" library="pinball_ttl" deviceset="R" device="" value="330"/>
<part name="R18" library="pinball_ttl" deviceset="R" device="" value="330"/>
<part name="R19" library="pinball_ttl" deviceset="R" device="" value="330"/>
<part name="R20" library="pinball_ttl" deviceset="R" device="" value="330"/>
<part name="R21" library="pinball_ttl" deviceset="R" device="" value="330"/>
<part name="R22" library="pinball_ttl" deviceset="R" device="" value="330"/>
<part name="R23" library="pinball_ttl" deviceset="R" device="" value="330"/>
<part name="DS1" library="pinball_ttl" deviceset="7SEG-CA" device="" value="5161BS"/>
<part name="U10" library="pinball_ttl" deviceset="74LS47" device="N" value="74LS47"/>
<part name="R24" library="pinball_ttl" deviceset="R" device="" value="330"/>
<part name="R25" library="pinball_ttl" deviceset="R" device="" value="330"/>
<part name="R26" library="pinball_ttl" deviceset="R" device="" value="330"/>
<part name="R27" library="pinball_ttl" deviceset="R" device="" value="330"/>
<part name="R28" library="pinball_ttl" deviceset="R" device="" value="330"/>
<part name="R29" library="pinball_ttl" deviceset="R" device="" value="330"/>
<part name="R30" library="pinball_ttl" deviceset="R" device="" value="330"/>
<part name="DS2" library="pinball_ttl" deviceset="7SEG-CA" device="" value="5161BS"/>
<part name="U11" library="pinball_ttl" deviceset="74LS47" device="N" value="74LS47"/>
<part name="R31" library="pinball_ttl" deviceset="R" device="" value="330"/>
<part name="R32" library="pinball_ttl" deviceset="R" device="" value="330"/>
<part name="R33" library="pinball_ttl" deviceset="R" device="" value="330"/>
<part name="R34" library="pinball_ttl" deviceset="R" device="" value="330"/>
<part name="R35" library="pinball_ttl" deviceset="R" device="" value="330"/>
<part name="R36" library="pinball_ttl" deviceset="R" device="" value="330"/>
<part name="R37" library="pinball_ttl" deviceset="R" device="" value="330"/>
<part name="DS3" library="pinball_ttl" deviceset="7SEG-CA" device="" value="5161BS"/>
<part name="U12" library="pinball_ttl" deviceset="74LS47" device="N" value="74LS47"/>
<part name="R38" library="pinball_ttl" deviceset="R" device="" value="330"/>
<part name="R39" library="pinball_ttl" deviceset="R" device="" value="330"/>
<part name="R40" library="pinball_ttl" deviceset="R" device="" value="330"/>
<part name="R41" library="pinball_ttl" deviceset="R" device="" value="330"/>
<part name="R42" library="pinball_ttl" deviceset="R" device="" value="330"/>
<part name="R43" library="pinball_ttl" deviceset="R" device="" value="330"/>
<part name="R44" library="pinball_ttl" deviceset="R" device="" value="330"/>
<part name="DS4" library="pinball_ttl" deviceset="7SEG-CA" device="" value="5161BS"/>
<part name="U13" library="pinball_ttl" deviceset="74LS47" device="N" value="74LS47"/>
<part name="R45" library="pinball_ttl" deviceset="R" device="" value="330"/>
<part name="R46" library="pinball_ttl" deviceset="R" device="" value="330"/>
<part name="R47" library="pinball_ttl" deviceset="R" device="" value="330"/>
<part name="R48" library="pinball_ttl" deviceset="R" device="" value="330"/>
<part name="R49" library="pinball_ttl" deviceset="R" device="" value="330"/>
<part name="R50" library="pinball_ttl" deviceset="R" device="" value="330"/>
<part name="R51" library="pinball_ttl" deviceset="R" device="" value="330"/>
<part name="DS5" library="pinball_ttl" deviceset="7SEG-CA" device="" value="5161BS"/>
<part name="U14" library="pinball_ttl" deviceset="74LS47" device="N" value="74LS47"/>
<part name="R52" library="pinball_ttl" deviceset="R" device="" value="330"/>
<part name="R53" library="pinball_ttl" deviceset="R" device="" value="330"/>
<part name="R54" library="pinball_ttl" deviceset="R" device="" value="330"/>
<part name="R55" library="pinball_ttl" deviceset="R" device="" value="330"/>
<part name="R56" library="pinball_ttl" deviceset="R" device="" value="330"/>
<part name="R57" library="pinball_ttl" deviceset="R" device="" value="330"/>
<part name="R58" library="pinball_ttl" deviceset="R" device="" value="330"/>
<part name="DS6" library="pinball_ttl" deviceset="7SEG-CA" device="" value="5161BS"/>
<part name="U15" library="pinball_ttl" deviceset="74LS47" device="N" value="74LS47"/>
<part name="R59" library="pinball_ttl" deviceset="R" device="" value="330"/>
<part name="R60" library="pinball_ttl" deviceset="R" device="" value="330"/>
<part name="R61" library="pinball_ttl" deviceset="R" device="" value="330"/>
<part name="R62" library="pinball_ttl" deviceset="R" device="" value="330"/>
<part name="R63" library="pinball_ttl" deviceset="R" device="" value="330"/>
<part name="R64" library="pinball_ttl" deviceset="R" device="" value="330"/>
<part name="R65" library="pinball_ttl" deviceset="R" device="" value="330"/>
<part name="DS7" library="pinball_ttl" deviceset="7SEG-CA" device="" value="5161BS"/>
<part name="U16" library="pinball_ttl" deviceset="74LS47" device="N" value="74LS47"/>
<part name="R66" library="pinball_ttl" deviceset="R" device="" value="330"/>
<part name="R67" library="pinball_ttl" deviceset="R" device="" value="330"/>
<part name="R68" library="pinball_ttl" deviceset="R" device="" value="330"/>
<part name="R69" library="pinball_ttl" deviceset="R" device="" value="330"/>
<part name="R70" library="pinball_ttl" deviceset="R" device="" value="330"/>
<part name="R71" library="pinball_ttl" deviceset="R" device="" value="330"/>
<part name="R72" library="pinball_ttl" deviceset="R" device="" value="330"/>
<part name="DS8" library="pinball_ttl" deviceset="7SEG-CA" device="" value="5161BS"/>
</parts>
<sheets>
<sheet><plain><text x="0" y="279.4" size="5.08" layer="97">Pinball Counter - Sheet 1: Inputs, debounce, reset, power</text><text x="0" y="264.16" size="2.1844" layer="97">Switch inputs close to GND. 74LS221 gives a ~23 ms active-low pulse (0.7 x 33k x 1uF).</text><text x="0" y="254" size="2.1844" layer="97">Reset: button or power-on (10uF/4.7k) -&gt; 74LS14 -&gt; RESET (active high) to all 74LS192 MR.</text><text x="342.9" y="167.64" size="2.1844" layer="97">Decoupling: one 100nF per IC, close to pin VCC</text></plain><instances><instance part="J1" gate="G$1" x="25.4" y="203.2"/>
<instance part="J2" gate="G$1" x="25.4" y="139.7"/>
<instance part="U19" gate="G$1" x="114.3" y="203.2"/>
<instance part="U20" gate="G$1" x="114.3" y="152.4"/>
<instance part="U21" gate="G$1" x="114.3" y="101.6"/>
<instance part="U22" gate="G$1" x="114.3" y="50.8"/>
<instance part="R1" gate="G$1" x="190.5" y="215.9"/>
<instance part="R9" gate="G$1" x="241.3" y="215.9"/>
<instance part="C1" gate="G$1" x="292.1" y="215.9"/>
<instance part="R2" gate="G$1" x="190.5" y="205.74"/>
<instance part="R10" gate="G$1" x="241.3" y="205.74"/>
<instance part="C2" gate="G$1" x="292.1" y="205.74"/>
<instance part="R3" gate="G$1" x="190.5" y="195.58"/>
<instance part="R11" gate="G$1" x="241.3" y="195.58"/>
<instance part="C3" gate="G$1" x="292.1" y="195.58"/>
<instance part="R4" gate="G$1" x="190.5" y="185.42"/>
<instance part="R12" gate="G$1" x="241.3" y="185.42"/>
<instance part="C4" gate="G$1" x="292.1" y="185.42"/>
<instance part="R5" gate="G$1" x="190.5" y="175.26"/>
<instance part="R13" gate="G$1" x="241.3" y="175.26"/>
<instance part="C5" gate="G$1" x="292.1" y="175.26"/>
<instance part="R6" gate="G$1" x="190.5" y="165.1"/>
<instance part="R14" gate="G$1" x="241.3" y="165.1"/>
<instance part="C6" gate="G$1" x="292.1" y="165.1"/>
<instance part="R7" gate="G$1" x="190.5" y="154.94"/>
<instance part="R15" gate="G$1" x="241.3" y="154.94"/>
<instance part="C7" gate="G$1" x="292.1" y="154.94"/>
<instance part="R8" gate="G$1" x="190.5" y="144.78"/>
<instance part="R16" gate="G$1" x="241.3" y="144.78"/>
<instance part="C8" gate="G$1" x="292.1" y="144.78"/>
<instance part="S1" gate="G$1" x="355.6" y="223.52"/>
<instance part="R73" gate="G$1" x="355.6" y="208.28"/>
<instance part="C9" gate="G$1" x="355.6" y="193.04"/>
<instance part="U23" gate="G$1" x="436.88" y="208.28"/>
<instance part="C10" gate="G$1" x="355.6" y="152.4"/>
<instance part="C11" gate="G$1" x="355.6" y="142.24"/>
<instance part="C12" gate="G$1" x="355.6" y="132.08"/>
<instance part="C13" gate="G$1" x="355.6" y="121.92"/>
<instance part="C14" gate="G$1" x="355.6" y="111.76"/>
<instance part="C15" gate="G$1" x="355.6" y="101.6"/>
<instance part="C16" gate="G$1" x="355.6" y="91.44"/>
<instance part="C17" gate="G$1" x="355.6" y="81.28"/>
<instance part="C18" gate="G$1" x="355.6" y="71.12"/>
<instance part="C19" gate="G$1" x="355.6" y="60.96"/>
<instance part="C20" gate="G$1" x="355.6" y="50.8"/>
<instance part="C21" gate="G$1" x="355.6" y="40.64"/>
<instance part="C22" gate="G$1" x="436.88" y="152.4"/>
<instance part="C23" gate="G$1" x="436.88" y="142.24"/>
<instance part="C24" gate="G$1" x="436.88" y="132.08"/>
<instance part="C25" gate="G$1" x="436.88" y="121.92"/>
<instance part="C26" gate="G$1" x="436.88" y="111.76"/>
<instance part="C27" gate="G$1" x="436.88" y="101.6"/>
<instance part="C28" gate="G$1" x="436.88" y="91.44"/>
<instance part="C29" gate="G$1" x="436.88" y="81.28"/>
<instance part="C30" gate="G$1" x="436.88" y="71.12"/>
<instance part="C31" gate="G$1" x="436.88" y="60.96"/>
<instance part="C32" gate="G$1" x="436.88" y="50.8"/>
<instance part="C33" gate="G$1" x="436.88" y="40.64"/></instances><busses/><nets>
<net name="CX1" class="0"><segment><pinref part="U19" gate="G$1" pin="1CEXT"/><wire x1="101.6" y1="208.28" x2="96.52" y2="208.28" width="0.1524" layer="91"/><label x="96.52" y="208.28" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="C1" gate="G$1" pin="1"/><wire x1="287.02" y1="215.9" x2="281.94" y2="215.9" width="0.1524" layer="91"/><label x="281.94" y="215.9" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="CX2" class="0"><segment><pinref part="U19" gate="G$1" pin="2CEXT"/><wire x1="101.6" y1="195.58" x2="96.52" y2="195.58" width="0.1524" layer="91"/><label x="96.52" y="195.58" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="C2" gate="G$1" pin="1"/><wire x1="287.02" y1="205.74" x2="281.94" y2="205.74" width="0.1524" layer="91"/><label x="281.94" y="205.74" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="CX3" class="0"><segment><pinref part="U20" gate="G$1" pin="1CEXT"/><wire x1="101.6" y1="157.48" x2="96.52" y2="157.48" width="0.1524" layer="91"/><label x="96.52" y="157.48" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="C3" gate="G$1" pin="1"/><wire x1="287.02" y1="195.58" x2="281.94" y2="195.58" width="0.1524" layer="91"/><label x="281.94" y="195.58" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="CX4" class="0"><segment><pinref part="U20" gate="G$1" pin="2CEXT"/><wire x1="101.6" y1="144.78" x2="96.52" y2="144.78" width="0.1524" layer="91"/><label x="96.52" y="144.78" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="C4" gate="G$1" pin="1"/><wire x1="287.02" y1="185.42" x2="281.94" y2="185.42" width="0.1524" layer="91"/><label x="281.94" y="185.42" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="CX5" class="0"><segment><pinref part="U21" gate="G$1" pin="1CEXT"/><wire x1="101.6" y1="106.68" x2="96.52" y2="106.68" width="0.1524" layer="91"/><label x="96.52" y="106.68" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="C5" gate="G$1" pin="1"/><wire x1="287.02" y1="175.26" x2="281.94" y2="175.26" width="0.1524" layer="91"/><label x="281.94" y="175.26" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="CX6" class="0"><segment><pinref part="U21" gate="G$1" pin="2CEXT"/><wire x1="101.6" y1="93.98" x2="96.52" y2="93.98" width="0.1524" layer="91"/><label x="96.52" y="93.98" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="C6" gate="G$1" pin="1"/><wire x1="287.02" y1="165.1" x2="281.94" y2="165.1" width="0.1524" layer="91"/><label x="281.94" y="165.1" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="CX7" class="0"><segment><pinref part="U22" gate="G$1" pin="1CEXT"/><wire x1="101.6" y1="55.88" x2="96.52" y2="55.88" width="0.1524" layer="91"/><label x="96.52" y="55.88" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="C7" gate="G$1" pin="1"/><wire x1="287.02" y1="154.94" x2="281.94" y2="154.94" width="0.1524" layer="91"/><label x="281.94" y="154.94" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="CX8" class="0"><segment><pinref part="U22" gate="G$1" pin="2CEXT"/><wire x1="101.6" y1="43.18" x2="96.52" y2="43.18" width="0.1524" layer="91"/><label x="96.52" y="43.18" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="C8" gate="G$1" pin="1"/><wire x1="287.02" y1="144.78" x2="281.94" y2="144.78" width="0.1524" layer="91"/><label x="281.94" y="144.78" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="GND" class="0"><segment><pinref part="J1" gate="G$1" pin="9"/><wire x1="38.1" y1="193.04" x2="43.18" y2="193.04" width="0.1524" layer="91"/><label x="43.18" y="193.04" size="1.778" layer="95"/></segment><segment><pinref part="J1" gate="G$1" pin="10"/><wire x1="38.1" y1="190.5" x2="43.18" y2="190.5" width="0.1524" layer="91"/><label x="43.18" y="190.5" size="1.778" layer="95"/></segment><segment><pinref part="J2" gate="G$1" pin="2"/><wire x1="38.1" y1="137.16" x2="43.18" y2="137.16" width="0.1524" layer="91"/><label x="43.18" y="137.16" size="1.778" layer="95"/></segment><segment><pinref part="U19" gate="G$1" pin="GND"/><wire x1="101.6" y1="187.96" x2="96.52" y2="187.96" width="0.1524" layer="91"/><label x="96.52" y="187.96" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U20" gate="G$1" pin="GND"/><wire x1="101.6" y1="137.16" x2="96.52" y2="137.16" width="0.1524" layer="91"/><label x="96.52" y="137.16" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U21" gate="G$1" pin="GND"/><wire x1="101.6" y1="86.36" x2="96.52" y2="86.36" width="0.1524" layer="91"/><label x="96.52" y="86.36" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U22" gate="G$1" pin="GND"/><wire x1="101.6" y1="35.56" x2="96.52" y2="35.56" width="0.1524" layer="91"/><label x="96.52" y="35.56" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="S1" gate="G$1" pin="2"/><wire x1="360.68" y1="223.52" x2="365.76" y2="223.52" width="0.1524" layer="91"/><label x="365.76" y="223.52" size="1.778" layer="95"/></segment><segment><pinref part="C9" gate="G$1" pin="2"/><wire x1="360.68" y1="193.04" x2="365.76" y2="193.04" width="0.1524" layer="91"/><label x="365.76" y="193.04" size="1.778" layer="95"/></segment><segment><pinref part="U23" gate="G$1" pin="2A"/><wire x1="424.18" y1="213.36" x2="419.1" y2="213.36" width="0.1524" layer="91"/><label x="419.1" y="213.36" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U23" gate="G$1" pin="3A"/><wire x1="424.18" y1="210.82" x2="419.1" y2="210.82" width="0.1524" layer="91"/><label x="419.1" y="210.82" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U23" gate="G$1" pin="4A"/><wire x1="424.18" y1="208.28" x2="419.1" y2="208.28" width="0.1524" layer="91"/><label x="419.1" y="208.28" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U23" gate="G$1" pin="5A"/><wire x1="424.18" y1="205.74" x2="419.1" y2="205.74" width="0.1524" layer="91"/><label x="419.1" y="205.74" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U23" gate="G$1" pin="6A"/><wire x1="424.18" y1="203.2" x2="419.1" y2="203.2" width="0.1524" layer="91"/><label x="419.1" y="203.2" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U23" gate="G$1" pin="GND"/><wire x1="424.18" y1="198.12" x2="419.1" y2="198.12" width="0.1524" layer="91"/><label x="419.1" y="198.12" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="C10" gate="G$1" pin="2"/><wire x1="360.68" y1="152.4" x2="365.76" y2="152.4" width="0.1524" layer="91"/><label x="365.76" y="152.4" size="1.778" layer="95"/></segment><segment><pinref part="C11" gate="G$1" pin="2"/><wire x1="360.68" y1="142.24" x2="365.76" y2="142.24" width="0.1524" layer="91"/><label x="365.76" y="142.24" size="1.778" layer="95"/></segment><segment><pinref part="C12" gate="G$1" pin="2"/><wire x1="360.68" y1="132.08" x2="365.76" y2="132.08" width="0.1524" layer="91"/><label x="365.76" y="132.08" size="1.778" layer="95"/></segment><segment><pinref part="C13" gate="G$1" pin="2"/><wire x1="360.68" y1="121.92" x2="365.76" y2="121.92" width="0.1524" layer="91"/><label x="365.76" y="121.92" size="1.778" layer="95"/></segment><segment><pinref part="C14" gate="G$1" pin="2"/><wire x1="360.68" y1="111.76" x2="365.76" y2="111.76" width="0.1524" layer="91"/><label x="365.76" y="111.76" size="1.778" layer="95"/></segment><segment><pinref part="C15" gate="G$1" pin="2"/><wire x1="360.68" y1="101.6" x2="365.76" y2="101.6" width="0.1524" layer="91"/><label x="365.76" y="101.6" size="1.778" layer="95"/></segment><segment><pinref part="C16" gate="G$1" pin="2"/><wire x1="360.68" y1="91.44" x2="365.76" y2="91.44" width="0.1524" layer="91"/><label x="365.76" y="91.44" size="1.778" layer="95"/></segment><segment><pinref part="C17" gate="G$1" pin="2"/><wire x1="360.68" y1="81.28" x2="365.76" y2="81.28" width="0.1524" layer="91"/><label x="365.76" y="81.28" size="1.778" layer="95"/></segment><segment><pinref part="C18" gate="G$1" pin="2"/><wire x1="360.68" y1="71.12" x2="365.76" y2="71.12" width="0.1524" layer="91"/><label x="365.76" y="71.12" size="1.778" layer="95"/></segment><segment><pinref part="C19" gate="G$1" pin="2"/><wire x1="360.68" y1="60.96" x2="365.76" y2="60.96" width="0.1524" layer="91"/><label x="365.76" y="60.96" size="1.778" layer="95"/></segment><segment><pinref part="C20" gate="G$1" pin="2"/><wire x1="360.68" y1="50.8" x2="365.76" y2="50.8" width="0.1524" layer="91"/><label x="365.76" y="50.8" size="1.778" layer="95"/></segment><segment><pinref part="C21" gate="G$1" pin="2"/><wire x1="360.68" y1="40.64" x2="365.76" y2="40.64" width="0.1524" layer="91"/><label x="365.76" y="40.64" size="1.778" layer="95"/></segment><segment><pinref part="C22" gate="G$1" pin="2"/><wire x1="441.96" y1="152.4" x2="447.04" y2="152.4" width="0.1524" layer="91"/><label x="447.04" y="152.4" size="1.778" layer="95"/></segment><segment><pinref part="C23" gate="G$1" pin="2"/><wire x1="441.96" y1="142.24" x2="447.04" y2="142.24" width="0.1524" layer="91"/><label x="447.04" y="142.24" size="1.778" layer="95"/></segment><segment><pinref part="C24" gate="G$1" pin="2"/><wire x1="441.96" y1="132.08" x2="447.04" y2="132.08" width="0.1524" layer="91"/><label x="447.04" y="132.08" size="1.778" layer="95"/></segment><segment><pinref part="C25" gate="G$1" pin="2"/><wire x1="441.96" y1="121.92" x2="447.04" y2="121.92" width="0.1524" layer="91"/><label x="447.04" y="121.92" size="1.778" layer="95"/></segment><segment><pinref part="C26" gate="G$1" pin="2"/><wire x1="441.96" y1="111.76" x2="447.04" y2="111.76" width="0.1524" layer="91"/><label x="447.04" y="111.76" size="1.778" layer="95"/></segment><segment><pinref part="C27" gate="G$1" pin="2"/><wire x1="441.96" y1="101.6" x2="447.04" y2="101.6" width="0.1524" layer="91"/><label x="447.04" y="101.6" size="1.778" layer="95"/></segment><segment><pinref part="C28" gate="G$1" pin="2"/><wire x1="441.96" y1="91.44" x2="447.04" y2="91.44" width="0.1524" layer="91"/><label x="447.04" y="91.44" size="1.778" layer="95"/></segment><segment><pinref part="C29" gate="G$1" pin="2"/><wire x1="441.96" y1="81.28" x2="447.04" y2="81.28" width="0.1524" layer="91"/><label x="447.04" y="81.28" size="1.778" layer="95"/></segment><segment><pinref part="C30" gate="G$1" pin="2"/><wire x1="441.96" y1="71.12" x2="447.04" y2="71.12" width="0.1524" layer="91"/><label x="447.04" y="71.12" size="1.778" layer="95"/></segment><segment><pinref part="C31" gate="G$1" pin="2"/><wire x1="441.96" y1="60.96" x2="447.04" y2="60.96" width="0.1524" layer="91"/><label x="447.04" y="60.96" size="1.778" layer="95"/></segment><segment><pinref part="C32" gate="G$1" pin="2"/><wire x1="441.96" y1="50.8" x2="447.04" y2="50.8" width="0.1524" layer="91"/><label x="447.04" y="50.8" size="1.778" layer="95"/></segment><segment><pinref part="C33" gate="G$1" pin="2"/><wire x1="441.96" y1="40.64" x2="447.04" y2="40.64" width="0.1524" layer="91"/><label x="447.04" y="40.64" size="1.778" layer="95"/></segment></net>
<net name="RCX1" class="0"><segment><pinref part="U19" gate="G$1" pin="1REXT/CEXT"/><wire x1="101.6" y1="205.74" x2="96.52" y2="205.74" width="0.1524" layer="91"/><label x="96.52" y="205.74" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="R9" gate="G$1" pin="2"/><wire x1="246.38" y1="215.9" x2="251.46" y2="215.9" width="0.1524" layer="91"/><label x="251.46" y="215.9" size="1.778" layer="95"/></segment><segment><pinref part="C1" gate="G$1" pin="2"/><wire x1="297.18" y1="215.9" x2="302.26" y2="215.9" width="0.1524" layer="91"/><label x="302.26" y="215.9" size="1.778" layer="95"/></segment></net>
<net name="RCX2" class="0"><segment><pinref part="U19" gate="G$1" pin="2REXT/CEXT"/><wire x1="101.6" y1="193.04" x2="96.52" y2="193.04" width="0.1524" layer="91"/><label x="96.52" y="193.04" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="R10" gate="G$1" pin="2"/><wire x1="246.38" y1="205.74" x2="251.46" y2="205.74" width="0.1524" layer="91"/><label x="251.46" y="205.74" size="1.778" layer="95"/></segment><segment><pinref part="C2" gate="G$1" pin="2"/><wire x1="297.18" y1="205.74" x2="302.26" y2="205.74" width="0.1524" layer="91"/><label x="302.26" y="205.74" size="1.778" layer="95"/></segment></net>
<net name="RCX3" class="0"><segment><pinref part="U20" gate="G$1" pin="1REXT/CEXT"/><wire x1="101.6" y1="154.94" x2="96.52" y2="154.94" width="0.1524" layer="91"/><label x="96.52" y="154.94" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="R11" gate="G$1" pin="2"/><wire x1="246.38" y1="195.58" x2="251.46" y2="195.58" width="0.1524" layer="91"/><label x="251.46" y="195.58" size="1.778" layer="95"/></segment><segment><pinref part="C3" gate="G$1" pin="2"/><wire x1="297.18" y1="195.58" x2="302.26" y2="195.58" width="0.1524" layer="91"/><label x="302.26" y="195.58" size="1.778" layer="95"/></segment></net>
<net name="RCX4" class="0"><segment><pinref part="U20" gate="G$1" pin="2REXT/CEXT"/><wire x1="101.6" y1="142.24" x2="96.52" y2="142.24" width="0.1524" layer="91"/><label x="96.52" y="142.24" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="R12" gate="G$1" pin="2"/><wire x1="246.38" y1="185.42" x2="251.46" y2="185.42" width="0.1524" layer="91"/><label x="251.46" y="185.42" size="1.778" layer="95"/></segment><segment><pinref part="C4" gate="G$1" pin="2"/><wire x1="297.18" y1="185.42" x2="302.26" y2="185.42" width="0.1524" layer="91"/><label x="302.26" y="185.42" size="1.778" layer="95"/></segment></net>
<net name="RCX5" class="0"><segment><pinref part="U21" gate="G$1" pin="1REXT/CEXT"/><wire x1="101.6" y1="104.14" x2="96.52" y2="104.14" width="0.1524" layer="91"/><label x="96.52" y="104.14" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="R13" gate="G$1" pin="2"/><wire x1="246.38" y1="175.26" x2="251.46" y2="175.26" width="0.1524" layer="91"/><label x="251.46" y="175.26" size="1.778" layer="95"/></segment><segment><pinref part="C5" gate="G$1" pin="2"/><wire x1="297.18" y1="175.26" x2="302.26" y2="175.26" width="0.1524" layer="91"/><label x="302.26" y="175.26" size="1.778" layer="95"/></segment></net>
<net name="RCX6" class="0"><segment><pinref part="U21" gate="G$1" pin="2REXT/CEXT"/><wire x1="101.6" y1="91.44" x2="96.52" y2="91.44" width="0.1524" layer="91"/><label x="96.52" y="91.44" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="R14" gate="G$1" pin="2"/><wire x1="246.38" y1="165.1" x2="251.46" y2="165.1" width="0.1524" layer="91"/><label x="251.46" y="165.1" size="1.778" layer="95"/></segment><segment><pinref part="C6" gate="G$1" pin="2"/><wire x1="297.18" y1="165.1" x2="302.26" y2="165.1" width="0.1524" layer="91"/><label x="302.26" y="165.1" size="1.778" layer="95"/></segment></net>
<net name="RCX7" class="0"><segment><pinref part="U22" gate="G$1" pin="1REXT/CEXT"/><wire x1="101.6" y1="53.34" x2="96.52" y2="53.34" width="0.1524" layer="91"/><label x="96.52" y="53.34" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="R15" gate="G$1" pin="2"/><wire x1="246.38" y1="154.94" x2="251.46" y2="154.94" width="0.1524" layer="91"/><label x="251.46" y="154.94" size="1.778" layer="95"/></segment><segment><pinref part="C7" gate="G$1" pin="2"/><wire x1="297.18" y1="154.94" x2="302.26" y2="154.94" width="0.1524" layer="91"/><label x="302.26" y="154.94" size="1.778" layer="95"/></segment></net>
<net name="RCX8" class="0"><segment><pinref part="U22" gate="G$1" pin="2REXT/CEXT"/><wire x1="101.6" y1="40.64" x2="96.52" y2="40.64" width="0.1524" layer="91"/><label x="96.52" y="40.64" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="R16" gate="G$1" pin="2"/><wire x1="246.38" y1="144.78" x2="251.46" y2="144.78" width="0.1524" layer="91"/><label x="251.46" y="144.78" size="1.778" layer="95"/></segment><segment><pinref part="C8" gate="G$1" pin="2"/><wire x1="297.18" y1="144.78" x2="302.26" y2="144.78" width="0.1524" layer="91"/><label x="302.26" y="144.78" size="1.778" layer="95"/></segment></net>
<net name="RESET" class="0"><segment><pinref part="U23" gate="G$1" pin="1Y"/><wire x1="449.58" y1="215.9" x2="454.66" y2="215.9" width="0.1524" layer="91"/><label x="454.66" y="215.9" size="1.778" layer="95"/></segment></net>
<net name="RST_N" class="0"><segment><pinref part="S1" gate="G$1" pin="1"/><wire x1="350.52" y1="223.52" x2="345.44" y2="223.52" width="0.1524" layer="91"/><label x="345.44" y="223.52" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="R73" gate="G$1" pin="2"/><wire x1="360.68" y1="208.28" x2="365.76" y2="208.28" width="0.1524" layer="91"/><label x="365.76" y="208.28" size="1.778" layer="95"/></segment><segment><pinref part="C9" gate="G$1" pin="1"/><wire x1="350.52" y1="193.04" x2="345.44" y2="193.04" width="0.1524" layer="91"/><label x="345.44" y="193.04" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U23" gate="G$1" pin="1A"/><wire x1="424.18" y1="215.9" x2="419.1" y2="215.9" width="0.1524" layer="91"/><label x="419.1" y="215.9" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="SW1" class="0"><segment><pinref part="J1" gate="G$1" pin="1"/><wire x1="38.1" y1="213.36" x2="43.18" y2="213.36" width="0.1524" layer="91"/><label x="43.18" y="213.36" size="1.778" layer="95"/></segment><segment><pinref part="U19" gate="G$1" pin="!1A"/><wire x1="101.6" y1="215.9" x2="96.52" y2="215.9" width="0.1524" layer="91"/><label x="96.52" y="215.9" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="R1" gate="G$1" pin="2"/><wire x1="195.58" y1="215.9" x2="200.66" y2="215.9" width="0.1524" layer="91"/><label x="200.66" y="215.9" size="1.778" layer="95"/></segment></net>
<net name="SW2" class="0"><segment><pinref part="J1" gate="G$1" pin="2"/><wire x1="38.1" y1="210.82" x2="43.18" y2="210.82" width="0.1524" layer="91"/><label x="43.18" y="210.82" size="1.778" layer="95"/></segment><segment><pinref part="U19" gate="G$1" pin="!2A"/><wire x1="101.6" y1="203.2" x2="96.52" y2="203.2" width="0.1524" layer="91"/><label x="96.52" y="203.2" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="R2" gate="G$1" pin="2"/><wire x1="195.58" y1="205.74" x2="200.66" y2="205.74" width="0.1524" layer="91"/><label x="200.66" y="205.74" size="1.778" layer="95"/></segment></net>
<net name="SW3" class="0"><segment><pinref part="J1" gate="G$1" pin="3"/><wire x1="38.1" y1="208.28" x2="43.18" y2="208.28" width="0.1524" layer="91"/><label x="43.18" y="208.28" size="1.778" layer="95"/></segment><segment><pinref part="U20" gate="G$1" pin="!1A"/><wire x1="101.6" y1="165.1" x2="96.52" y2="165.1" width="0.1524" layer="91"/><label x="96.52" y="165.1" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="R3" gate="G$1" pin="2"/><wire x1="195.58" y1="195.58" x2="200.66" y2="195.58" width="0.1524" layer="91"/><label x="200.66" y="195.58" size="1.778" layer="95"/></segment></net>
<net name="SW4" class="0"><segment><pinref part="J1" gate="G$1" pin="4"/><wire x1="38.1" y1="205.74" x2="43.18" y2="205.74" width="0.1524" layer="91"/><label x="43.18" y="205.74" size="1.778" layer="95"/></segment><segment><pinref part="U20" gate="G$1" pin="!2A"/><wire x1="101.6" y1="152.4" x2="96.52" y2="152.4" width="0.1524" layer="91"/><label x="96.52" y="152.4" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="R4" gate="G$1" pin="2"/><wire x1="195.58" y1="185.42" x2="200.66" y2="185.42" width="0.1524" layer="91"/><label x="200.66" y="185.42" size="1.778" layer="95"/></segment></net>
<net name="SW5" class="0"><segment><pinref part="J1" gate="G$1" pin="5"/><wire x1="38.1" y1="203.2" x2="43.18" y2="203.2" width="0.1524" layer="91"/><label x="43.18" y="203.2" size="1.778" layer="95"/></segment><segment><pinref part="U21" gate="G$1" pin="!1A"/><wire x1="101.6" y1="114.3" x2="96.52" y2="114.3" width="0.1524" layer="91"/><label x="96.52" y="114.3" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="R5" gate="G$1" pin="2"/><wire x1="195.58" y1="175.26" x2="200.66" y2="175.26" width="0.1524" layer="91"/><label x="200.66" y="175.26" size="1.778" layer="95"/></segment></net>
<net name="SW6" class="0"><segment><pinref part="J1" gate="G$1" pin="6"/><wire x1="38.1" y1="200.66" x2="43.18" y2="200.66" width="0.1524" layer="91"/><label x="43.18" y="200.66" size="1.778" layer="95"/></segment><segment><pinref part="U21" gate="G$1" pin="!2A"/><wire x1="101.6" y1="101.6" x2="96.52" y2="101.6" width="0.1524" layer="91"/><label x="96.52" y="101.6" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="R6" gate="G$1" pin="2"/><wire x1="195.58" y1="165.1" x2="200.66" y2="165.1" width="0.1524" layer="91"/><label x="200.66" y="165.1" size="1.778" layer="95"/></segment></net>
<net name="SW7" class="0"><segment><pinref part="J1" gate="G$1" pin="7"/><wire x1="38.1" y1="198.12" x2="43.18" y2="198.12" width="0.1524" layer="91"/><label x="43.18" y="198.12" size="1.778" layer="95"/></segment><segment><pinref part="U22" gate="G$1" pin="!1A"/><wire x1="101.6" y1="63.5" x2="96.52" y2="63.5" width="0.1524" layer="91"/><label x="96.52" y="63.5" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="R7" gate="G$1" pin="2"/><wire x1="195.58" y1="154.94" x2="200.66" y2="154.94" width="0.1524" layer="91"/><label x="200.66" y="154.94" size="1.778" layer="95"/></segment></net>
<net name="SW8" class="0"><segment><pinref part="J1" gate="G$1" pin="8"/><wire x1="38.1" y1="195.58" x2="43.18" y2="195.58" width="0.1524" layer="91"/><label x="43.18" y="195.58" size="1.778" layer="95"/></segment><segment><pinref part="U22" gate="G$1" pin="!2A"/><wire x1="101.6" y1="50.8" x2="96.52" y2="50.8" width="0.1524" layer="91"/><label x="96.52" y="50.8" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="R8" gate="G$1" pin="2"/><wire x1="195.58" y1="144.78" x2="200.66" y2="144.78" width="0.1524" layer="91"/><label x="200.66" y="144.78" size="1.778" layer="95"/></segment></net>
<net name="TRIG1" class="0"><segment><pinref part="U19" gate="G$1" pin="!1Q"/><wire x1="127" y1="213.36" x2="132.08" y2="213.36" width="0.1524" layer="91"/><label x="132.08" y="213.36" size="1.778" layer="95"/></segment></net>
<net name="TRIG2" class="0"><segment><pinref part="U19" gate="G$1" pin="!2Q"/><wire x1="127" y1="208.28" x2="132.08" y2="208.28" width="0.1524" layer="91"/><label x="132.08" y="208.28" size="1.778" layer="95"/></segment></net>
<net name="TRIG3" class="0"><segment><pinref part="U20" gate="G$1" pin="!1Q"/><wire x1="127" y1="162.56" x2="132.08" y2="162.56" width="0.1524" layer="91"/><label x="132.08" y="162.56" size="1.778" layer="95"/></segment></net>
<net name="TRIG4" class="0"><segment><pinref part="U20" gate="G$1" pin="!2Q"/><wire x1="127" y1="157.48" x2="132.08" y2="157.48" width="0.1524" layer="91"/><label x="132.08" y="157.48" size="1.778" layer="95"/></segment></net>
<net name="TRIG5" class="0"><segment><pinref part="U21" gate="G$1" pin="!1Q"/><wire x1="127" y1="111.76" x2="132.08" y2="111.76" width="0.1524" layer="91"/><label x="132.08" y="111.76" size="1.778" layer="95"/></segment></net>
<net name="TRIG6" class="0"><segment><pinref part="U21" gate="G$1" pin="!2Q"/><wire x1="127" y1="106.68" x2="132.08" y2="106.68" width="0.1524" layer="91"/><label x="132.08" y="106.68" size="1.778" layer="95"/></segment></net>
<net name="TRIG7" class="0"><segment><pinref part="U22" gate="G$1" pin="!1Q"/><wire x1="127" y1="60.96" x2="132.08" y2="60.96" width="0.1524" layer="91"/><label x="132.08" y="60.96" size="1.778" layer="95"/></segment></net>
<net name="TRIG8" class="0"><segment><pinref part="U22" gate="G$1" pin="!2Q"/><wire x1="127" y1="55.88" x2="132.08" y2="55.88" width="0.1524" layer="91"/><label x="132.08" y="55.88" size="1.778" layer="95"/></segment></net>
<net name="VCC" class="0"><segment><pinref part="J2" gate="G$1" pin="1"/><wire x1="38.1" y1="139.7" x2="43.18" y2="139.7" width="0.1524" layer="91"/><label x="43.18" y="139.7" size="1.778" layer="95"/></segment><segment><pinref part="U19" gate="G$1" pin="1B"/><wire x1="101.6" y1="213.36" x2="96.52" y2="213.36" width="0.1524" layer="91"/><label x="96.52" y="213.36" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U19" gate="G$1" pin="!1CLR"/><wire x1="101.6" y1="210.82" x2="96.52" y2="210.82" width="0.1524" layer="91"/><label x="96.52" y="210.82" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U19" gate="G$1" pin="2B"/><wire x1="101.6" y1="200.66" x2="96.52" y2="200.66" width="0.1524" layer="91"/><label x="96.52" y="200.66" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U19" gate="G$1" pin="!2CLR"/><wire x1="101.6" y1="198.12" x2="96.52" y2="198.12" width="0.1524" layer="91"/><label x="96.52" y="198.12" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U19" gate="G$1" pin="VCC"/><wire x1="101.6" y1="190.5" x2="96.52" y2="190.5" width="0.1524" layer="91"/><label x="96.52" y="190.5" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U20" gate="G$1" pin="1B"/><wire x1="101.6" y1="162.56" x2="96.52" y2="162.56" width="0.1524" layer="91"/><label x="96.52" y="162.56" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U20" gate="G$1" pin="!1CLR"/><wire x1="101.6" y1="160.02" x2="96.52" y2="160.02" width="0.1524" layer="91"/><label x="96.52" y="160.02" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U20" gate="G$1" pin="2B"/><wire x1="101.6" y1="149.86" x2="96.52" y2="149.86" width="0.1524" layer="91"/><label x="96.52" y="149.86" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U20" gate="G$1" pin="!2CLR"/><wire x1="101.6" y1="147.32" x2="96.52" y2="147.32" width="0.1524" layer="91"/><label x="96.52" y="147.32" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U20" gate="G$1" pin="VCC"/><wire x1="101.6" y1="139.7" x2="96.52" y2="139.7" width="0.1524" layer="91"/><label x="96.52" y="139.7" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U21" gate="G$1" pin="1B"/><wire x1="101.6" y1="111.76" x2="96.52" y2="111.76" width="0.1524" layer="91"/><label x="96.52" y="111.76" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U21" gate="G$1" pin="!1CLR"/><wire x1="101.6" y1="109.22" x2="96.52" y2="109.22" width="0.1524" layer="91"/><label x="96.52" y="109.22" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U21" gate="G$1" pin="2B"/><wire x1="101.6" y1="99.06" x2="96.52" y2="99.06" width="0.1524" layer="91"/><label x="96.52" y="99.06" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U21" gate="G$1" pin="!2CLR"/><wire x1="101.6" y1="96.52" x2="96.52" y2="96.52" width="0.1524" layer="91"/><label x="96.52" y="96.52" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U21" gate="G$1" pin="VCC"/><wire x1="101.6" y1="88.9" x2="96.52" y2="88.9" width="0.1524" layer="91"/><label x="96.52" y="88.9" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U22" gate="G$1" pin="1B"/><wire x1="101.6" y1="60.96" x2="96.52" y2="60.96" width="0.1524" layer="91"/><label x="96.52" y="60.96" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U22" gate="G$1" pin="!1CLR"/><wire x1="101.6" y1="58.42" x2="96.52" y2="58.42" width="0.1524" layer="91"/><label x="96.52" y="58.42" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U22" gate="G$1" pin="2B"/><wire x1="101.6" y1="48.26" x2="96.52" y2="48.26" width="0.1524" layer="91"/><label x="96.52" y="48.26" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U22" gate="G$1" pin="!2CLR"/><wire x1="101.6" y1="45.72" x2="96.52" y2="45.72" width="0.1524" layer="91"/><label x="96.52" y="45.72" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U22" gate="G$1" pin="VCC"/><wire x1="101.6" y1="38.1" x2="96.52" y2="38.1" width="0.1524" layer="91"/><label x="96.52" y="38.1" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="R1" gate="G$1" pin="1"/><wire x1="185.42" y1="215.9" x2="180.34" y2="215.9" width="0.1524" layer="91"/><label x="180.34" y="215.9" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="R9" gate="G$1" pin="1"/><wire x1="236.22" y1="215.9" x2="231.14" y2="215.9" width="0.1524" layer="91"/><label x="231.14" y="215.9" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="R2" gate="G$1" pin="1"/><wire x1="185.42" y1="205.74" x2="180.34" y2="205.74" width="0.1524" layer="91"/><label x="180.34" y="205.74" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="R10" gate="G$1" pin="1"/><wire x1="236.22" y1="205.74" x2="231.14" y2="205.74" width="0.1524" layer="91"/><label x="231.14" y="205.74" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="R3" gate="G$1" pin="1"/><wire x1="185.42" y1="195.58" x2="180.34" y2="195.58" width="0.1524" layer="91"/><label x="180.34" y="195.58" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="R11" gate="G$1" pin="1"/><wire x1="236.22" y1="195.58" x2="231.14" y2="195.58" width="0.1524" layer="91"/><label x="231.14" y="195.58" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="R4" gate="G$1" pin="1"/><wire x1="185.42" y1="185.42" x2="180.34" y2="185.42" width="0.1524" layer="91"/><label x="180.34" y="185.42" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="R12" gate="G$1" pin="1"/><wire x1="236.22" y1="185.42" x2="231.14" y2="185.42" width="0.1524" layer="91"/><label x="231.14" y="185.42" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="R5" gate="G$1" pin="1"/><wire x1="185.42" y1="175.26" x2="180.34" y2="175.26" width="0.1524" layer="91"/><label x="180.34" y="175.26" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="R13" gate="G$1" pin="1"/><wire x1="236.22" y1="175.26" x2="231.14" y2="175.26" width="0.1524" layer="91"/><label x="231.14" y="175.26" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="R6" gate="G$1" pin="1"/><wire x1="185.42" y1="165.1" x2="180.34" y2="165.1" width="0.1524" layer="91"/><label x="180.34" y="165.1" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="R14" gate="G$1" pin="1"/><wire x1="236.22" y1="165.1" x2="231.14" y2="165.1" width="0.1524" layer="91"/><label x="231.14" y="165.1" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="R7" gate="G$1" pin="1"/><wire x1="185.42" y1="154.94" x2="180.34" y2="154.94" width="0.1524" layer="91"/><label x="180.34" y="154.94" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="R15" gate="G$1" pin="1"/><wire x1="236.22" y1="154.94" x2="231.14" y2="154.94" width="0.1524" layer="91"/><label x="231.14" y="154.94" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="R8" gate="G$1" pin="1"/><wire x1="185.42" y1="144.78" x2="180.34" y2="144.78" width="0.1524" layer="91"/><label x="180.34" y="144.78" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="R16" gate="G$1" pin="1"/><wire x1="236.22" y1="144.78" x2="231.14" y2="144.78" width="0.1524" layer="91"/><label x="231.14" y="144.78" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="R73" gate="G$1" pin="1"/><wire x1="350.52" y1="208.28" x2="345.44" y2="208.28" width="0.1524" layer="91"/><label x="345.44" y="208.28" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U23" gate="G$1" pin="VCC"/><wire x1="424.18" y1="200.66" x2="419.1" y2="200.66" width="0.1524" layer="91"/><label x="419.1" y="200.66" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="C10" gate="G$1" pin="1"/><wire x1="350.52" y1="152.4" x2="345.44" y2="152.4" width="0.1524" layer="91"/><label x="345.44" y="152.4" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="C11" gate="G$1" pin="1"/><wire x1="350.52" y1="142.24" x2="345.44" y2="142.24" width="0.1524" layer="91"/><label x="345.44" y="142.24" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="C12" gate="G$1" pin="1"/><wire x1="350.52" y1="132.08" x2="345.44" y2="132.08" width="0.1524" layer="91"/><label x="345.44" y="132.08" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="C13" gate="G$1" pin="1"/><wire x1="350.52" y1="121.92" x2="345.44" y2="121.92" width="0.1524" layer="91"/><label x="345.44" y="121.92" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="C14" gate="G$1" pin="1"/><wire x1="350.52" y1="111.76" x2="345.44" y2="111.76" width="0.1524" layer="91"/><label x="345.44" y="111.76" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="C15" gate="G$1" pin="1"/><wire x1="350.52" y1="101.6" x2="345.44" y2="101.6" width="0.1524" layer="91"/><label x="345.44" y="101.6" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="C16" gate="G$1" pin="1"/><wire x1="350.52" y1="91.44" x2="345.44" y2="91.44" width="0.1524" layer="91"/><label x="345.44" y="91.44" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="C17" gate="G$1" pin="1"/><wire x1="350.52" y1="81.28" x2="345.44" y2="81.28" width="0.1524" layer="91"/><label x="345.44" y="81.28" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="C18" gate="G$1" pin="1"/><wire x1="350.52" y1="71.12" x2="345.44" y2="71.12" width="0.1524" layer="91"/><label x="345.44" y="71.12" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="C19" gate="G$1" pin="1"/><wire x1="350.52" y1="60.96" x2="345.44" y2="60.96" width="0.1524" layer="91"/><label x="345.44" y="60.96" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="C20" gate="G$1" pin="1"/><wire x1="350.52" y1="50.8" x2="345.44" y2="50.8" width="0.1524" layer="91"/><label x="345.44" y="50.8" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="C21" gate="G$1" pin="1"/><wire x1="350.52" y1="40.64" x2="345.44" y2="40.64" width="0.1524" layer="91"/><label x="345.44" y="40.64" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="C22" gate="G$1" pin="1"/><wire x1="431.8" y1="152.4" x2="426.72" y2="152.4" width="0.1524" layer="91"/><label x="426.72" y="152.4" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="C23" gate="G$1" pin="1"/><wire x1="431.8" y1="142.24" x2="426.72" y2="142.24" width="0.1524" layer="91"/><label x="426.72" y="142.24" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="C24" gate="G$1" pin="1"/><wire x1="431.8" y1="132.08" x2="426.72" y2="132.08" width="0.1524" layer="91"/><label x="426.72" y="132.08" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="C25" gate="G$1" pin="1"/><wire x1="431.8" y1="121.92" x2="426.72" y2="121.92" width="0.1524" layer="91"/><label x="426.72" y="121.92" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="C26" gate="G$1" pin="1"/><wire x1="431.8" y1="111.76" x2="426.72" y2="111.76" width="0.1524" layer="91"/><label x="426.72" y="111.76" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="C27" gate="G$1" pin="1"/><wire x1="431.8" y1="101.6" x2="426.72" y2="101.6" width="0.1524" layer="91"/><label x="426.72" y="101.6" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="C28" gate="G$1" pin="1"/><wire x1="431.8" y1="91.44" x2="426.72" y2="91.44" width="0.1524" layer="91"/><label x="426.72" y="91.44" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="C29" gate="G$1" pin="1"/><wire x1="431.8" y1="81.28" x2="426.72" y2="81.28" width="0.1524" layer="91"/><label x="426.72" y="81.28" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="C30" gate="G$1" pin="1"/><wire x1="431.8" y1="71.12" x2="426.72" y2="71.12" width="0.1524" layer="91"/><label x="426.72" y="71.12" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="C31" gate="G$1" pin="1"/><wire x1="431.8" y1="60.96" x2="426.72" y2="60.96" width="0.1524" layer="91"/><label x="426.72" y="60.96" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="C32" gate="G$1" pin="1"/><wire x1="431.8" y1="50.8" x2="426.72" y2="50.8" width="0.1524" layer="91"/><label x="426.72" y="50.8" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="C33" gate="G$1" pin="1"/><wire x1="431.8" y1="40.64" x2="426.72" y2="40.64" width="0.1524" layer="91"/><label x="426.72" y="40.64" size="1.778" layer="95" rot="R180"/></segment></net>
</nets></sheet>
<sheet><plain><text x="0" y="279.4" size="5.08" layer="97">Pinball Counter - Sheet 2: Counter chain (74LS192 + 74LS08)</text><text x="0" y="264.16" size="2.1844" layer="97">CLKn = TRIGn AND CARRY(n-1). Both idle HIGH, pulse LOW; 74LS192 counts on the rising edge.</text><text x="0" y="254" size="2.1844" layer="97">Digit 1 = ones (rightmost display). CARRY8 = overflow (unused / optional LED).</text></plain><instances><instance part="U1" gate="G$1" x="50.8" y="203.2"/>
<instance part="U2" gate="G$1" x="152.4" y="203.2"/>
<instance part="U3" gate="G$1" x="254" y="203.2"/>
<instance part="U4" gate="G$1" x="355.6" y="203.2"/>
<instance part="U5" gate="G$1" x="50.8" y="132.08"/>
<instance part="U6" gate="G$1" x="152.4" y="132.08"/>
<instance part="U7" gate="G$1" x="254" y="132.08"/>
<instance part="U8" gate="G$1" x="355.6" y="132.08"/>
<instance part="U17" gate="G$1" x="50.8" y="63.5"/>
<instance part="U18" gate="G$1" x="152.4" y="63.5"/></instances><busses/><nets>
<net name="CARRY1" class="0"><segment><pinref part="U1" gate="G$1" pin="!TCU"/><wire x1="63.5" y1="203.2" x2="68.58" y2="203.2" width="0.1524" layer="91"/><label x="68.58" y="203.2" size="1.778" layer="95"/></segment><segment><pinref part="U17" gate="G$1" pin="2B"/><wire x1="38.1" y1="66.04" x2="33.02" y2="66.04" width="0.1524" layer="91"/><label x="33.02" y="66.04" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="CARRY2" class="0"><segment><pinref part="U2" gate="G$1" pin="!TCU"/><wire x1="165.1" y1="203.2" x2="170.18" y2="203.2" width="0.1524" layer="91"/><label x="170.18" y="203.2" size="1.778" layer="95"/></segment><segment><pinref part="U17" gate="G$1" pin="3B"/><wire x1="38.1" y1="60.96" x2="33.02" y2="60.96" width="0.1524" layer="91"/><label x="33.02" y="60.96" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="CARRY3" class="0"><segment><pinref part="U3" gate="G$1" pin="!TCU"/><wire x1="266.7" y1="203.2" x2="271.78" y2="203.2" width="0.1524" layer="91"/><label x="271.78" y="203.2" size="1.778" layer="95"/></segment><segment><pinref part="U17" gate="G$1" pin="4B"/><wire x1="38.1" y1="55.88" x2="33.02" y2="55.88" width="0.1524" layer="91"/><label x="33.02" y="55.88" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="CARRY4" class="0"><segment><pinref part="U4" gate="G$1" pin="!TCU"/><wire x1="368.3" y1="203.2" x2="373.38" y2="203.2" width="0.1524" layer="91"/><label x="373.38" y="203.2" size="1.778" layer="95"/></segment><segment><pinref part="U18" gate="G$1" pin="1B"/><wire x1="139.7" y1="71.12" x2="134.62" y2="71.12" width="0.1524" layer="91"/><label x="134.62" y="71.12" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="CARRY5" class="0"><segment><pinref part="U5" gate="G$1" pin="!TCU"/><wire x1="63.5" y1="132.08" x2="68.58" y2="132.08" width="0.1524" layer="91"/><label x="68.58" y="132.08" size="1.778" layer="95"/></segment><segment><pinref part="U18" gate="G$1" pin="2B"/><wire x1="139.7" y1="66.04" x2="134.62" y2="66.04" width="0.1524" layer="91"/><label x="134.62" y="66.04" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="CARRY6" class="0"><segment><pinref part="U6" gate="G$1" pin="!TCU"/><wire x1="165.1" y1="132.08" x2="170.18" y2="132.08" width="0.1524" layer="91"/><label x="170.18" y="132.08" size="1.778" layer="95"/></segment><segment><pinref part="U18" gate="G$1" pin="3B"/><wire x1="139.7" y1="60.96" x2="134.62" y2="60.96" width="0.1524" layer="91"/><label x="134.62" y="60.96" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="CARRY7" class="0"><segment><pinref part="U7" gate="G$1" pin="!TCU"/><wire x1="266.7" y1="132.08" x2="271.78" y2="132.08" width="0.1524" layer="91"/><label x="271.78" y="132.08" size="1.778" layer="95"/></segment><segment><pinref part="U18" gate="G$1" pin="4B"/><wire x1="139.7" y1="55.88" x2="134.62" y2="55.88" width="0.1524" layer="91"/><label x="134.62" y="55.88" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="CLK1" class="0"><segment><pinref part="U1" gate="G$1" pin="CPU"/><wire x1="38.1" y1="213.36" x2="33.02" y2="213.36" width="0.1524" layer="91"/><label x="33.02" y="213.36" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U17" gate="G$1" pin="1Y"/><wire x1="63.5" y1="73.66" x2="68.58" y2="73.66" width="0.1524" layer="91"/><label x="68.58" y="73.66" size="1.778" layer="95"/></segment></net>
<net name="CLK2" class="0"><segment><pinref part="U2" gate="G$1" pin="CPU"/><wire x1="139.7" y1="213.36" x2="134.62" y2="213.36" width="0.1524" layer="91"/><label x="134.62" y="213.36" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U17" gate="G$1" pin="2Y"/><wire x1="63.5" y1="71.12" x2="68.58" y2="71.12" width="0.1524" layer="91"/><label x="68.58" y="71.12" size="1.778" layer="95"/></segment></net>
<net name="CLK3" class="0"><segment><pinref part="U3" gate="G$1" pin="CPU"/><wire x1="241.3" y1="213.36" x2="236.22" y2="213.36" width="0.1524" layer="91"/><label x="236.22" y="213.36" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U17" gate="G$1" pin="3Y"/><wire x1="63.5" y1="68.58" x2="68.58" y2="68.58" width="0.1524" layer="91"/><label x="68.58" y="68.58" size="1.778" layer="95"/></segment></net>
<net name="CLK4" class="0"><segment><pinref part="U4" gate="G$1" pin="CPU"/><wire x1="342.9" y1="213.36" x2="337.82" y2="213.36" width="0.1524" layer="91"/><label x="337.82" y="213.36" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U17" gate="G$1" pin="4Y"/><wire x1="63.5" y1="66.04" x2="68.58" y2="66.04" width="0.1524" layer="91"/><label x="68.58" y="66.04" size="1.778" layer="95"/></segment></net>
<net name="CLK5" class="0"><segment><pinref part="U5" gate="G$1" pin="CPU"/><wire x1="38.1" y1="142.24" x2="33.02" y2="142.24" width="0.1524" layer="91"/><label x="33.02" y="142.24" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U18" gate="G$1" pin="1Y"/><wire x1="165.1" y1="73.66" x2="170.18" y2="73.66" width="0.1524" layer="91"/><label x="170.18" y="73.66" size="1.778" layer="95"/></segment></net>
<net name="CLK6" class="0"><segment><pinref part="U6" gate="G$1" pin="CPU"/><wire x1="139.7" y1="142.24" x2="134.62" y2="142.24" width="0.1524" layer="91"/><label x="134.62" y="142.24" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U18" gate="G$1" pin="2Y"/><wire x1="165.1" y1="71.12" x2="170.18" y2="71.12" width="0.1524" layer="91"/><label x="170.18" y="71.12" size="1.778" layer="95"/></segment></net>
<net name="CLK7" class="0"><segment><pinref part="U7" gate="G$1" pin="CPU"/><wire x1="241.3" y1="142.24" x2="236.22" y2="142.24" width="0.1524" layer="91"/><label x="236.22" y="142.24" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U18" gate="G$1" pin="3Y"/><wire x1="165.1" y1="68.58" x2="170.18" y2="68.58" width="0.1524" layer="91"/><label x="170.18" y="68.58" size="1.778" layer="95"/></segment></net>
<net name="CLK8" class="0"><segment><pinref part="U8" gate="G$1" pin="CPU"/><wire x1="342.9" y1="142.24" x2="337.82" y2="142.24" width="0.1524" layer="91"/><label x="337.82" y="142.24" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U18" gate="G$1" pin="4Y"/><wire x1="165.1" y1="66.04" x2="170.18" y2="66.04" width="0.1524" layer="91"/><label x="170.18" y="66.04" size="1.778" layer="95"/></segment></net>
<net name="D1_Q0" class="0"><segment><pinref part="U1" gate="G$1" pin="Q0"/><wire x1="63.5" y1="213.36" x2="68.58" y2="213.36" width="0.1524" layer="91"/><label x="68.58" y="213.36" size="1.778" layer="95"/></segment></net>
<net name="D1_Q1" class="0"><segment><pinref part="U1" gate="G$1" pin="Q1"/><wire x1="63.5" y1="210.82" x2="68.58" y2="210.82" width="0.1524" layer="91"/><label x="68.58" y="210.82" size="1.778" layer="95"/></segment></net>
<net name="D1_Q2" class="0"><segment><pinref part="U1" gate="G$1" pin="Q2"/><wire x1="63.5" y1="208.28" x2="68.58" y2="208.28" width="0.1524" layer="91"/><label x="68.58" y="208.28" size="1.778" layer="95"/></segment></net>
<net name="D1_Q3" class="0"><segment><pinref part="U1" gate="G$1" pin="Q3"/><wire x1="63.5" y1="205.74" x2="68.58" y2="205.74" width="0.1524" layer="91"/><label x="68.58" y="205.74" size="1.778" layer="95"/></segment></net>
<net name="D2_Q0" class="0"><segment><pinref part="U2" gate="G$1" pin="Q0"/><wire x1="165.1" y1="213.36" x2="170.18" y2="213.36" width="0.1524" layer="91"/><label x="170.18" y="213.36" size="1.778" layer="95"/></segment></net>
<net name="D2_Q1" class="0"><segment><pinref part="U2" gate="G$1" pin="Q1"/><wire x1="165.1" y1="210.82" x2="170.18" y2="210.82" width="0.1524" layer="91"/><label x="170.18" y="210.82" size="1.778" layer="95"/></segment></net>
<net name="D2_Q2" class="0"><segment><pinref part="U2" gate="G$1" pin="Q2"/><wire x1="165.1" y1="208.28" x2="170.18" y2="208.28" width="0.1524" layer="91"/><label x="170.18" y="208.28" size="1.778" layer="95"/></segment></net>
<net name="D2_Q3" class="0"><segment><pinref part="U2" gate="G$1" pin="Q3"/><wire x1="165.1" y1="205.74" x2="170.18" y2="205.74" width="0.1524" layer="91"/><label x="170.18" y="205.74" size="1.778" layer="95"/></segment></net>
<net name="D3_Q0" class="0"><segment><pinref part="U3" gate="G$1" pin="Q0"/><wire x1="266.7" y1="213.36" x2="271.78" y2="213.36" width="0.1524" layer="91"/><label x="271.78" y="213.36" size="1.778" layer="95"/></segment></net>
<net name="D3_Q1" class="0"><segment><pinref part="U3" gate="G$1" pin="Q1"/><wire x1="266.7" y1="210.82" x2="271.78" y2="210.82" width="0.1524" layer="91"/><label x="271.78" y="210.82" size="1.778" layer="95"/></segment></net>
<net name="D3_Q2" class="0"><segment><pinref part="U3" gate="G$1" pin="Q2"/><wire x1="266.7" y1="208.28" x2="271.78" y2="208.28" width="0.1524" layer="91"/><label x="271.78" y="208.28" size="1.778" layer="95"/></segment></net>
<net name="D3_Q3" class="0"><segment><pinref part="U3" gate="G$1" pin="Q3"/><wire x1="266.7" y1="205.74" x2="271.78" y2="205.74" width="0.1524" layer="91"/><label x="271.78" y="205.74" size="1.778" layer="95"/></segment></net>
<net name="D4_Q0" class="0"><segment><pinref part="U4" gate="G$1" pin="Q0"/><wire x1="368.3" y1="213.36" x2="373.38" y2="213.36" width="0.1524" layer="91"/><label x="373.38" y="213.36" size="1.778" layer="95"/></segment></net>
<net name="D4_Q1" class="0"><segment><pinref part="U4" gate="G$1" pin="Q1"/><wire x1="368.3" y1="210.82" x2="373.38" y2="210.82" width="0.1524" layer="91"/><label x="373.38" y="210.82" size="1.778" layer="95"/></segment></net>
<net name="D4_Q2" class="0"><segment><pinref part="U4" gate="G$1" pin="Q2"/><wire x1="368.3" y1="208.28" x2="373.38" y2="208.28" width="0.1524" layer="91"/><label x="373.38" y="208.28" size="1.778" layer="95"/></segment></net>
<net name="D4_Q3" class="0"><segment><pinref part="U4" gate="G$1" pin="Q3"/><wire x1="368.3" y1="205.74" x2="373.38" y2="205.74" width="0.1524" layer="91"/><label x="373.38" y="205.74" size="1.778" layer="95"/></segment></net>
<net name="D5_Q0" class="0"><segment><pinref part="U5" gate="G$1" pin="Q0"/><wire x1="63.5" y1="142.24" x2="68.58" y2="142.24" width="0.1524" layer="91"/><label x="68.58" y="142.24" size="1.778" layer="95"/></segment></net>
<net name="D5_Q1" class="0"><segment><pinref part="U5" gate="G$1" pin="Q1"/><wire x1="63.5" y1="139.7" x2="68.58" y2="139.7" width="0.1524" layer="91"/><label x="68.58" y="139.7" size="1.778" layer="95"/></segment></net>
<net name="D5_Q2" class="0"><segment><pinref part="U5" gate="G$1" pin="Q2"/><wire x1="63.5" y1="137.16" x2="68.58" y2="137.16" width="0.1524" layer="91"/><label x="68.58" y="137.16" size="1.778" layer="95"/></segment></net>
<net name="D5_Q3" class="0"><segment><pinref part="U5" gate="G$1" pin="Q3"/><wire x1="63.5" y1="134.62" x2="68.58" y2="134.62" width="0.1524" layer="91"/><label x="68.58" y="134.62" size="1.778" layer="95"/></segment></net>
<net name="D6_Q0" class="0"><segment><pinref part="U6" gate="G$1" pin="Q0"/><wire x1="165.1" y1="142.24" x2="170.18" y2="142.24" width="0.1524" layer="91"/><label x="170.18" y="142.24" size="1.778" layer="95"/></segment></net>
<net name="D6_Q1" class="0"><segment><pinref part="U6" gate="G$1" pin="Q1"/><wire x1="165.1" y1="139.7" x2="170.18" y2="139.7" width="0.1524" layer="91"/><label x="170.18" y="139.7" size="1.778" layer="95"/></segment></net>
<net name="D6_Q2" class="0"><segment><pinref part="U6" gate="G$1" pin="Q2"/><wire x1="165.1" y1="137.16" x2="170.18" y2="137.16" width="0.1524" layer="91"/><label x="170.18" y="137.16" size="1.778" layer="95"/></segment></net>
<net name="D6_Q3" class="0"><segment><pinref part="U6" gate="G$1" pin="Q3"/><wire x1="165.1" y1="134.62" x2="170.18" y2="134.62" width="0.1524" layer="91"/><label x="170.18" y="134.62" size="1.778" layer="95"/></segment></net>
<net name="D7_Q0" class="0"><segment><pinref part="U7" gate="G$1" pin="Q0"/><wire x1="266.7" y1="142.24" x2="271.78" y2="142.24" width="0.1524" layer="91"/><label x="271.78" y="142.24" size="1.778" layer="95"/></segment></net>
<net name="D7_Q1" class="0"><segment><pinref part="U7" gate="G$1" pin="Q1"/><wire x1="266.7" y1="139.7" x2="271.78" y2="139.7" width="0.1524" layer="91"/><label x="271.78" y="139.7" size="1.778" layer="95"/></segment></net>
<net name="D7_Q2" class="0"><segment><pinref part="U7" gate="G$1" pin="Q2"/><wire x1="266.7" y1="137.16" x2="271.78" y2="137.16" width="0.1524" layer="91"/><label x="271.78" y="137.16" size="1.778" layer="95"/></segment></net>
<net name="D7_Q3" class="0"><segment><pinref part="U7" gate="G$1" pin="Q3"/><wire x1="266.7" y1="134.62" x2="271.78" y2="134.62" width="0.1524" layer="91"/><label x="271.78" y="134.62" size="1.778" layer="95"/></segment></net>
<net name="D8_Q0" class="0"><segment><pinref part="U8" gate="G$1" pin="Q0"/><wire x1="368.3" y1="142.24" x2="373.38" y2="142.24" width="0.1524" layer="91"/><label x="373.38" y="142.24" size="1.778" layer="95"/></segment></net>
<net name="D8_Q1" class="0"><segment><pinref part="U8" gate="G$1" pin="Q1"/><wire x1="368.3" y1="139.7" x2="373.38" y2="139.7" width="0.1524" layer="91"/><label x="373.38" y="139.7" size="1.778" layer="95"/></segment></net>
<net name="D8_Q2" class="0"><segment><pinref part="U8" gate="G$1" pin="Q2"/><wire x1="368.3" y1="137.16" x2="373.38" y2="137.16" width="0.1524" layer="91"/><label x="373.38" y="137.16" size="1.778" layer="95"/></segment></net>
<net name="D8_Q3" class="0"><segment><pinref part="U8" gate="G$1" pin="Q3"/><wire x1="368.3" y1="134.62" x2="373.38" y2="134.62" width="0.1524" layer="91"/><label x="373.38" y="134.62" size="1.778" layer="95"/></segment></net>
<net name="GND" class="0"><segment><pinref part="U1" gate="G$1" pin="P0"/><wire x1="38.1" y1="203.2" x2="33.02" y2="203.2" width="0.1524" layer="91"/><label x="33.02" y="203.2" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U1" gate="G$1" pin="P1"/><wire x1="38.1" y1="200.66" x2="33.02" y2="200.66" width="0.1524" layer="91"/><label x="33.02" y="200.66" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U1" gate="G$1" pin="P2"/><wire x1="38.1" y1="198.12" x2="33.02" y2="198.12" width="0.1524" layer="91"/><label x="33.02" y="198.12" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U1" gate="G$1" pin="P3"/><wire x1="38.1" y1="195.58" x2="33.02" y2="195.58" width="0.1524" layer="91"/><label x="33.02" y="195.58" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U1" gate="G$1" pin="GND"/><wire x1="38.1" y1="190.5" x2="33.02" y2="190.5" width="0.1524" layer="91"/><label x="33.02" y="190.5" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U2" gate="G$1" pin="P0"/><wire x1="139.7" y1="203.2" x2="134.62" y2="203.2" width="0.1524" layer="91"/><label x="134.62" y="203.2" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U2" gate="G$1" pin="P1"/><wire x1="139.7" y1="200.66" x2="134.62" y2="200.66" width="0.1524" layer="91"/><label x="134.62" y="200.66" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U2" gate="G$1" pin="P2"/><wire x1="139.7" y1="198.12" x2="134.62" y2="198.12" width="0.1524" layer="91"/><label x="134.62" y="198.12" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U2" gate="G$1" pin="P3"/><wire x1="139.7" y1="195.58" x2="134.62" y2="195.58" width="0.1524" layer="91"/><label x="134.62" y="195.58" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U2" gate="G$1" pin="GND"/><wire x1="139.7" y1="190.5" x2="134.62" y2="190.5" width="0.1524" layer="91"/><label x="134.62" y="190.5" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U3" gate="G$1" pin="P0"/><wire x1="241.3" y1="203.2" x2="236.22" y2="203.2" width="0.1524" layer="91"/><label x="236.22" y="203.2" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U3" gate="G$1" pin="P1"/><wire x1="241.3" y1="200.66" x2="236.22" y2="200.66" width="0.1524" layer="91"/><label x="236.22" y="200.66" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U3" gate="G$1" pin="P2"/><wire x1="241.3" y1="198.12" x2="236.22" y2="198.12" width="0.1524" layer="91"/><label x="236.22" y="198.12" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U3" gate="G$1" pin="P3"/><wire x1="241.3" y1="195.58" x2="236.22" y2="195.58" width="0.1524" layer="91"/><label x="236.22" y="195.58" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U3" gate="G$1" pin="GND"/><wire x1="241.3" y1="190.5" x2="236.22" y2="190.5" width="0.1524" layer="91"/><label x="236.22" y="190.5" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U4" gate="G$1" pin="P0"/><wire x1="342.9" y1="203.2" x2="337.82" y2="203.2" width="0.1524" layer="91"/><label x="337.82" y="203.2" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U4" gate="G$1" pin="P1"/><wire x1="342.9" y1="200.66" x2="337.82" y2="200.66" width="0.1524" layer="91"/><label x="337.82" y="200.66" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U4" gate="G$1" pin="P2"/><wire x1="342.9" y1="198.12" x2="337.82" y2="198.12" width="0.1524" layer="91"/><label x="337.82" y="198.12" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U4" gate="G$1" pin="P3"/><wire x1="342.9" y1="195.58" x2="337.82" y2="195.58" width="0.1524" layer="91"/><label x="337.82" y="195.58" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U4" gate="G$1" pin="GND"/><wire x1="342.9" y1="190.5" x2="337.82" y2="190.5" width="0.1524" layer="91"/><label x="337.82" y="190.5" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U5" gate="G$1" pin="P0"/><wire x1="38.1" y1="132.08" x2="33.02" y2="132.08" width="0.1524" layer="91"/><label x="33.02" y="132.08" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U5" gate="G$1" pin="P1"/><wire x1="38.1" y1="129.54" x2="33.02" y2="129.54" width="0.1524" layer="91"/><label x="33.02" y="129.54" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U5" gate="G$1" pin="P2"/><wire x1="38.1" y1="127" x2="33.02" y2="127" width="0.1524" layer="91"/><label x="33.02" y="127" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U5" gate="G$1" pin="P3"/><wire x1="38.1" y1="124.46" x2="33.02" y2="124.46" width="0.1524" layer="91"/><label x="33.02" y="124.46" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U5" gate="G$1" pin="GND"/><wire x1="38.1" y1="119.38" x2="33.02" y2="119.38" width="0.1524" layer="91"/><label x="33.02" y="119.38" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U6" gate="G$1" pin="P0"/><wire x1="139.7" y1="132.08" x2="134.62" y2="132.08" width="0.1524" layer="91"/><label x="134.62" y="132.08" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U6" gate="G$1" pin="P1"/><wire x1="139.7" y1="129.54" x2="134.62" y2="129.54" width="0.1524" layer="91"/><label x="134.62" y="129.54" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U6" gate="G$1" pin="P2"/><wire x1="139.7" y1="127" x2="134.62" y2="127" width="0.1524" layer="91"/><label x="134.62" y="127" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U6" gate="G$1" pin="P3"/><wire x1="139.7" y1="124.46" x2="134.62" y2="124.46" width="0.1524" layer="91"/><label x="134.62" y="124.46" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U6" gate="G$1" pin="GND"/><wire x1="139.7" y1="119.38" x2="134.62" y2="119.38" width="0.1524" layer="91"/><label x="134.62" y="119.38" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U7" gate="G$1" pin="P0"/><wire x1="241.3" y1="132.08" x2="236.22" y2="132.08" width="0.1524" layer="91"/><label x="236.22" y="132.08" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U7" gate="G$1" pin="P1"/><wire x1="241.3" y1="129.54" x2="236.22" y2="129.54" width="0.1524" layer="91"/><label x="236.22" y="129.54" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U7" gate="G$1" pin="P2"/><wire x1="241.3" y1="127" x2="236.22" y2="127" width="0.1524" layer="91"/><label x="236.22" y="127" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U7" gate="G$1" pin="P3"/><wire x1="241.3" y1="124.46" x2="236.22" y2="124.46" width="0.1524" layer="91"/><label x="236.22" y="124.46" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U7" gate="G$1" pin="GND"/><wire x1="241.3" y1="119.38" x2="236.22" y2="119.38" width="0.1524" layer="91"/><label x="236.22" y="119.38" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U8" gate="G$1" pin="P0"/><wire x1="342.9" y1="132.08" x2="337.82" y2="132.08" width="0.1524" layer="91"/><label x="337.82" y="132.08" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U8" gate="G$1" pin="P1"/><wire x1="342.9" y1="129.54" x2="337.82" y2="129.54" width="0.1524" layer="91"/><label x="337.82" y="129.54" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U8" gate="G$1" pin="P2"/><wire x1="342.9" y1="127" x2="337.82" y2="127" width="0.1524" layer="91"/><label x="337.82" y="127" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U8" gate="G$1" pin="P3"/><wire x1="342.9" y1="124.46" x2="337.82" y2="124.46" width="0.1524" layer="91"/><label x="337.82" y="124.46" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U8" gate="G$1" pin="GND"/><wire x1="342.9" y1="119.38" x2="337.82" y2="119.38" width="0.1524" layer="91"/><label x="337.82" y="119.38" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U17" gate="G$1" pin="GND"/><wire x1="38.1" y1="50.8" x2="33.02" y2="50.8" width="0.1524" layer="91"/><label x="33.02" y="50.8" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U18" gate="G$1" pin="GND"/><wire x1="139.7" y1="50.8" x2="134.62" y2="50.8" width="0.1524" layer="91"/><label x="134.62" y="50.8" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="RESET" class="0"><segment><pinref part="U1" gate="G$1" pin="MR"/><wire x1="38.1" y1="205.74" x2="33.02" y2="205.74" width="0.1524" layer="91"/><label x="33.02" y="205.74" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U2" gate="G$1" pin="MR"/><wire x1="139.7" y1="205.74" x2="134.62" y2="205.74" width="0.1524" layer="91"/><label x="134.62" y="205.74" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U3" gate="G$1" pin="MR"/><wire x1="241.3" y1="205.74" x2="236.22" y2="205.74" width="0.1524" layer="91"/><label x="236.22" y="205.74" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U4" gate="G$1" pin="MR"/><wire x1="342.9" y1="205.74" x2="337.82" y2="205.74" width="0.1524" layer="91"/><label x="337.82" y="205.74" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U5" gate="G$1" pin="MR"/><wire x1="38.1" y1="134.62" x2="33.02" y2="134.62" width="0.1524" layer="91"/><label x="33.02" y="134.62" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U6" gate="G$1" pin="MR"/><wire x1="139.7" y1="134.62" x2="134.62" y2="134.62" width="0.1524" layer="91"/><label x="134.62" y="134.62" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U7" gate="G$1" pin="MR"/><wire x1="241.3" y1="134.62" x2="236.22" y2="134.62" width="0.1524" layer="91"/><label x="236.22" y="134.62" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U8" gate="G$1" pin="MR"/><wire x1="342.9" y1="134.62" x2="337.82" y2="134.62" width="0.1524" layer="91"/><label x="337.82" y="134.62" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="TRIG1" class="0"><segment><pinref part="U17" gate="G$1" pin="1A"/><wire x1="38.1" y1="73.66" x2="33.02" y2="73.66" width="0.1524" layer="91"/><label x="33.02" y="73.66" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="TRIG2" class="0"><segment><pinref part="U17" gate="G$1" pin="2A"/><wire x1="38.1" y1="68.58" x2="33.02" y2="68.58" width="0.1524" layer="91"/><label x="33.02" y="68.58" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="TRIG3" class="0"><segment><pinref part="U17" gate="G$1" pin="3A"/><wire x1="38.1" y1="63.5" x2="33.02" y2="63.5" width="0.1524" layer="91"/><label x="33.02" y="63.5" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="TRIG4" class="0"><segment><pinref part="U17" gate="G$1" pin="4A"/><wire x1="38.1" y1="58.42" x2="33.02" y2="58.42" width="0.1524" layer="91"/><label x="33.02" y="58.42" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="TRIG5" class="0"><segment><pinref part="U18" gate="G$1" pin="1A"/><wire x1="139.7" y1="73.66" x2="134.62" y2="73.66" width="0.1524" layer="91"/><label x="134.62" y="73.66" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="TRIG6" class="0"><segment><pinref part="U18" gate="G$1" pin="2A"/><wire x1="139.7" y1="68.58" x2="134.62" y2="68.58" width="0.1524" layer="91"/><label x="134.62" y="68.58" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="TRIG7" class="0"><segment><pinref part="U18" gate="G$1" pin="3A"/><wire x1="139.7" y1="63.5" x2="134.62" y2="63.5" width="0.1524" layer="91"/><label x="134.62" y="63.5" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="TRIG8" class="0"><segment><pinref part="U18" gate="G$1" pin="4A"/><wire x1="139.7" y1="58.42" x2="134.62" y2="58.42" width="0.1524" layer="91"/><label x="134.62" y="58.42" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="VCC" class="0"><segment><pinref part="U1" gate="G$1" pin="CPD"/><wire x1="38.1" y1="210.82" x2="33.02" y2="210.82" width="0.1524" layer="91"/><label x="33.02" y="210.82" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U1" gate="G$1" pin="!PL"/><wire x1="38.1" y1="208.28" x2="33.02" y2="208.28" width="0.1524" layer="91"/><label x="33.02" y="208.28" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U1" gate="G$1" pin="VCC"/><wire x1="38.1" y1="193.04" x2="33.02" y2="193.04" width="0.1524" layer="91"/><label x="33.02" y="193.04" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U2" gate="G$1" pin="CPD"/><wire x1="139.7" y1="210.82" x2="134.62" y2="210.82" width="0.1524" layer="91"/><label x="134.62" y="210.82" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U2" gate="G$1" pin="!PL"/><wire x1="139.7" y1="208.28" x2="134.62" y2="208.28" width="0.1524" layer="91"/><label x="134.62" y="208.28" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U2" gate="G$1" pin="VCC"/><wire x1="139.7" y1="193.04" x2="134.62" y2="193.04" width="0.1524" layer="91"/><label x="134.62" y="193.04" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U3" gate="G$1" pin="CPD"/><wire x1="241.3" y1="210.82" x2="236.22" y2="210.82" width="0.1524" layer="91"/><label x="236.22" y="210.82" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U3" gate="G$1" pin="!PL"/><wire x1="241.3" y1="208.28" x2="236.22" y2="208.28" width="0.1524" layer="91"/><label x="236.22" y="208.28" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U3" gate="G$1" pin="VCC"/><wire x1="241.3" y1="193.04" x2="236.22" y2="193.04" width="0.1524" layer="91"/><label x="236.22" y="193.04" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U4" gate="G$1" pin="CPD"/><wire x1="342.9" y1="210.82" x2="337.82" y2="210.82" width="0.1524" layer="91"/><label x="337.82" y="210.82" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U4" gate="G$1" pin="!PL"/><wire x1="342.9" y1="208.28" x2="337.82" y2="208.28" width="0.1524" layer="91"/><label x="337.82" y="208.28" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U4" gate="G$1" pin="VCC"/><wire x1="342.9" y1="193.04" x2="337.82" y2="193.04" width="0.1524" layer="91"/><label x="337.82" y="193.04" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U5" gate="G$1" pin="CPD"/><wire x1="38.1" y1="139.7" x2="33.02" y2="139.7" width="0.1524" layer="91"/><label x="33.02" y="139.7" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U5" gate="G$1" pin="!PL"/><wire x1="38.1" y1="137.16" x2="33.02" y2="137.16" width="0.1524" layer="91"/><label x="33.02" y="137.16" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U5" gate="G$1" pin="VCC"/><wire x1="38.1" y1="121.92" x2="33.02" y2="121.92" width="0.1524" layer="91"/><label x="33.02" y="121.92" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U6" gate="G$1" pin="CPD"/><wire x1="139.7" y1="139.7" x2="134.62" y2="139.7" width="0.1524" layer="91"/><label x="134.62" y="139.7" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U6" gate="G$1" pin="!PL"/><wire x1="139.7" y1="137.16" x2="134.62" y2="137.16" width="0.1524" layer="91"/><label x="134.62" y="137.16" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U6" gate="G$1" pin="VCC"/><wire x1="139.7" y1="121.92" x2="134.62" y2="121.92" width="0.1524" layer="91"/><label x="134.62" y="121.92" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U7" gate="G$1" pin="CPD"/><wire x1="241.3" y1="139.7" x2="236.22" y2="139.7" width="0.1524" layer="91"/><label x="236.22" y="139.7" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U7" gate="G$1" pin="!PL"/><wire x1="241.3" y1="137.16" x2="236.22" y2="137.16" width="0.1524" layer="91"/><label x="236.22" y="137.16" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U7" gate="G$1" pin="VCC"/><wire x1="241.3" y1="121.92" x2="236.22" y2="121.92" width="0.1524" layer="91"/><label x="236.22" y="121.92" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U8" gate="G$1" pin="CPD"/><wire x1="342.9" y1="139.7" x2="337.82" y2="139.7" width="0.1524" layer="91"/><label x="337.82" y="139.7" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U8" gate="G$1" pin="!PL"/><wire x1="342.9" y1="137.16" x2="337.82" y2="137.16" width="0.1524" layer="91"/><label x="337.82" y="137.16" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U8" gate="G$1" pin="VCC"/><wire x1="342.9" y1="121.92" x2="337.82" y2="121.92" width="0.1524" layer="91"/><label x="337.82" y="121.92" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U17" gate="G$1" pin="1B"/><wire x1="38.1" y1="71.12" x2="33.02" y2="71.12" width="0.1524" layer="91"/><label x="33.02" y="71.12" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U17" gate="G$1" pin="VCC"/><wire x1="38.1" y1="53.34" x2="33.02" y2="53.34" width="0.1524" layer="91"/><label x="33.02" y="53.34" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U18" gate="G$1" pin="VCC"/><wire x1="139.7" y1="53.34" x2="134.62" y2="53.34" width="0.1524" layer="91"/><label x="134.62" y="53.34" size="1.778" layer="95" rot="R180"/></segment></net>
</nets></sheet>
<sheet><plain><text x="0" y="279.4" size="5.08" layer="97">Pinball Counter - Sheet 3: Decoders (74LS47) and displays</text><text x="0" y="264.16" size="2.1844" layer="97">Leading-zero blanking: RBI of digit 8 = GND, RBO(n) -&gt; RBI(n-1), digit 1 RBI = VCC (always shows 0).</text><text x="0" y="254" size="2.1844" layer="97">Segment resistors 330R (~9 mA/segment). Displays: common anode 0.56in, e.g. 5161BS.</text></plain><instances><instance part="U9" gate="G$1" x="38.1" y="203.2"/>
<instance part="R17" gate="G$1" x="101.6" y="233.68"/>
<instance part="R18" gate="G$1" x="101.6" y="223.52"/>
<instance part="R19" gate="G$1" x="101.6" y="213.36"/>
<instance part="R20" gate="G$1" x="101.6" y="203.2"/>
<instance part="R21" gate="G$1" x="101.6" y="193.04"/>
<instance part="R22" gate="G$1" x="101.6" y="182.88"/>
<instance part="R23" gate="G$1" x="101.6" y="172.72"/>
<instance part="DS1" gate="G$1" x="165.1" y="203.2"/>
<instance part="U10" gate="G$1" x="228.6" y="203.2"/>
<instance part="R24" gate="G$1" x="292.1" y="233.68"/>
<instance part="R25" gate="G$1" x="292.1" y="223.52"/>
<instance part="R26" gate="G$1" x="292.1" y="213.36"/>
<instance part="R27" gate="G$1" x="292.1" y="203.2"/>
<instance part="R28" gate="G$1" x="292.1" y="193.04"/>
<instance part="R29" gate="G$1" x="292.1" y="182.88"/>
<instance part="R30" gate="G$1" x="292.1" y="172.72"/>
<instance part="DS2" gate="G$1" x="355.6" y="203.2"/>
<instance part="U11" gate="G$1" x="419.1" y="203.2"/>
<instance part="R31" gate="G$1" x="482.6" y="233.68"/>
<instance part="R32" gate="G$1" x="482.6" y="223.52"/>
<instance part="R33" gate="G$1" x="482.6" y="213.36"/>
<instance part="R34" gate="G$1" x="482.6" y="203.2"/>
<instance part="R35" gate="G$1" x="482.6" y="193.04"/>
<instance part="R36" gate="G$1" x="482.6" y="182.88"/>
<instance part="R37" gate="G$1" x="482.6" y="172.72"/>
<instance part="DS3" gate="G$1" x="546.1" y="203.2"/>
<instance part="U12" gate="G$1" x="609.6" y="203.2"/>
<instance part="R38" gate="G$1" x="673.1" y="233.68"/>
<instance part="R39" gate="G$1" x="673.1" y="223.52"/>
<instance part="R40" gate="G$1" x="673.1" y="213.36"/>
<instance part="R41" gate="G$1" x="673.1" y="203.2"/>
<instance part="R42" gate="G$1" x="673.1" y="193.04"/>
<instance part="R43" gate="G$1" x="673.1" y="182.88"/>
<instance part="R44" gate="G$1" x="673.1" y="172.72"/>
<instance part="DS4" gate="G$1" x="736.6" y="203.2"/>
<instance part="U13" gate="G$1" x="38.1" y="106.68"/>
<instance part="R45" gate="G$1" x="101.6" y="137.16"/>
<instance part="R46" gate="G$1" x="101.6" y="127"/>
<instance part="R47" gate="G$1" x="101.6" y="116.84"/>
<instance part="R48" gate="G$1" x="101.6" y="106.68"/>
<instance part="R49" gate="G$1" x="101.6" y="96.52"/>
<instance part="R50" gate="G$1" x="101.6" y="86.36"/>
<instance part="R51" gate="G$1" x="101.6" y="76.2"/>
<instance part="DS5" gate="G$1" x="165.1" y="106.68"/>
<instance part="U14" gate="G$1" x="228.6" y="106.68"/>
<instance part="R52" gate="G$1" x="292.1" y="137.16"/>
<instance part="R53" gate="G$1" x="292.1" y="127"/>
<instance part="R54" gate="G$1" x="292.1" y="116.84"/>
<instance part="R55" gate="G$1" x="292.1" y="106.68"/>
<instance part="R56" gate="G$1" x="292.1" y="96.52"/>
<instance part="R57" gate="G$1" x="292.1" y="86.36"/>
<instance part="R58" gate="G$1" x="292.1" y="76.2"/>
<instance part="DS6" gate="G$1" x="355.6" y="106.68"/>
<instance part="U15" gate="G$1" x="419.1" y="106.68"/>
<instance part="R59" gate="G$1" x="482.6" y="137.16"/>
<instance part="R60" gate="G$1" x="482.6" y="127"/>
<instance part="R61" gate="G$1" x="482.6" y="116.84"/>
<instance part="R62" gate="G$1" x="482.6" y="106.68"/>
<instance part="R63" gate="G$1" x="482.6" y="96.52"/>
<instance part="R64" gate="G$1" x="482.6" y="86.36"/>
<instance part="R65" gate="G$1" x="482.6" y="76.2"/>
<instance part="DS7" gate="G$1" x="546.1" y="106.68"/>
<instance part="U16" gate="G$1" x="609.6" y="106.68"/>
<instance part="R66" gate="G$1" x="673.1" y="137.16"/>
<instance part="R67" gate="G$1" x="673.1" y="127"/>
<instance part="R68" gate="G$1" x="673.1" y="116.84"/>
<instance part="R69" gate="G$1" x="673.1" y="106.68"/>
<instance part="R70" gate="G$1" x="673.1" y="96.52"/>
<instance part="R71" gate="G$1" x="673.1" y="86.36"/>
<instance part="R72" gate="G$1" x="673.1" y="76.2"/>
<instance part="DS8" gate="G$1" x="736.6" y="106.68"/></instances><busses/><nets>
<net name="D1_LEDA" class="0"><segment><pinref part="R17" gate="G$1" pin="2"/><wire x1="106.68" y1="233.68" x2="111.76" y2="233.68" width="0.1524" layer="91"/><label x="111.76" y="233.68" size="1.778" layer="95"/></segment><segment><pinref part="DS1" gate="G$1" pin="A"/><wire x1="152.4" y1="210.82" x2="147.32" y2="210.82" width="0.1524" layer="91"/><label x="147.32" y="210.82" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D1_LEDB" class="0"><segment><pinref part="R18" gate="G$1" pin="2"/><wire x1="106.68" y1="223.52" x2="111.76" y2="223.52" width="0.1524" layer="91"/><label x="111.76" y="223.52" size="1.778" layer="95"/></segment><segment><pinref part="DS1" gate="G$1" pin="B"/><wire x1="152.4" y1="208.28" x2="147.32" y2="208.28" width="0.1524" layer="91"/><label x="147.32" y="208.28" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D1_LEDC" class="0"><segment><pinref part="R19" gate="G$1" pin="2"/><wire x1="106.68" y1="213.36" x2="111.76" y2="213.36" width="0.1524" layer="91"/><label x="111.76" y="213.36" size="1.778" layer="95"/></segment><segment><pinref part="DS1" gate="G$1" pin="C"/><wire x1="152.4" y1="205.74" x2="147.32" y2="205.74" width="0.1524" layer="91"/><label x="147.32" y="205.74" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D1_LEDD" class="0"><segment><pinref part="R20" gate="G$1" pin="2"/><wire x1="106.68" y1="203.2" x2="111.76" y2="203.2" width="0.1524" layer="91"/><label x="111.76" y="203.2" size="1.778" layer="95"/></segment><segment><pinref part="DS1" gate="G$1" pin="D"/><wire x1="152.4" y1="203.2" x2="147.32" y2="203.2" width="0.1524" layer="91"/><label x="147.32" y="203.2" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D1_LEDE" class="0"><segment><pinref part="R21" gate="G$1" pin="2"/><wire x1="106.68" y1="193.04" x2="111.76" y2="193.04" width="0.1524" layer="91"/><label x="111.76" y="193.04" size="1.778" layer="95"/></segment><segment><pinref part="DS1" gate="G$1" pin="E"/><wire x1="152.4" y1="200.66" x2="147.32" y2="200.66" width="0.1524" layer="91"/><label x="147.32" y="200.66" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D1_LEDF" class="0"><segment><pinref part="R22" gate="G$1" pin="2"/><wire x1="106.68" y1="182.88" x2="111.76" y2="182.88" width="0.1524" layer="91"/><label x="111.76" y="182.88" size="1.778" layer="95"/></segment><segment><pinref part="DS1" gate="G$1" pin="F"/><wire x1="152.4" y1="198.12" x2="147.32" y2="198.12" width="0.1524" layer="91"/><label x="147.32" y="198.12" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D1_LEDG" class="0"><segment><pinref part="R23" gate="G$1" pin="2"/><wire x1="106.68" y1="172.72" x2="111.76" y2="172.72" width="0.1524" layer="91"/><label x="111.76" y="172.72" size="1.778" layer="95"/></segment><segment><pinref part="DS1" gate="G$1" pin="G"/><wire x1="152.4" y1="195.58" x2="147.32" y2="195.58" width="0.1524" layer="91"/><label x="147.32" y="195.58" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D1_Q0" class="0"><segment><pinref part="U9" gate="G$1" pin="A"/><wire x1="25.4" y1="210.82" x2="20.32" y2="210.82" width="0.1524" layer="91"/><label x="20.32" y="210.82" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D1_Q1" class="0"><segment><pinref part="U9" gate="G$1" pin="B"/><wire x1="25.4" y1="208.28" x2="20.32" y2="208.28" width="0.1524" layer="91"/><label x="20.32" y="208.28" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D1_Q2" class="0"><segment><pinref part="U9" gate="G$1" pin="C"/><wire x1="25.4" y1="205.74" x2="20.32" y2="205.74" width="0.1524" layer="91"/><label x="20.32" y="205.74" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D1_Q3" class="0"><segment><pinref part="U9" gate="G$1" pin="D"/><wire x1="25.4" y1="203.2" x2="20.32" y2="203.2" width="0.1524" layer="91"/><label x="20.32" y="203.2" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D1_SEGA" class="0"><segment><pinref part="U9" gate="G$1" pin="SEG_A"/><wire x1="50.8" y1="210.82" x2="55.88" y2="210.82" width="0.1524" layer="91"/><label x="55.88" y="210.82" size="1.778" layer="95"/></segment><segment><pinref part="R17" gate="G$1" pin="1"/><wire x1="96.52" y1="233.68" x2="91.44" y2="233.68" width="0.1524" layer="91"/><label x="91.44" y="233.68" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D1_SEGB" class="0"><segment><pinref part="U9" gate="G$1" pin="SEG_B"/><wire x1="50.8" y1="208.28" x2="55.88" y2="208.28" width="0.1524" layer="91"/><label x="55.88" y="208.28" size="1.778" layer="95"/></segment><segment><pinref part="R18" gate="G$1" pin="1"/><wire x1="96.52" y1="223.52" x2="91.44" y2="223.52" width="0.1524" layer="91"/><label x="91.44" y="223.52" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D1_SEGC" class="0"><segment><pinref part="U9" gate="G$1" pin="SEG_C"/><wire x1="50.8" y1="205.74" x2="55.88" y2="205.74" width="0.1524" layer="91"/><label x="55.88" y="205.74" size="1.778" layer="95"/></segment><segment><pinref part="R19" gate="G$1" pin="1"/><wire x1="96.52" y1="213.36" x2="91.44" y2="213.36" width="0.1524" layer="91"/><label x="91.44" y="213.36" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D1_SEGD" class="0"><segment><pinref part="U9" gate="G$1" pin="SEG_D"/><wire x1="50.8" y1="203.2" x2="55.88" y2="203.2" width="0.1524" layer="91"/><label x="55.88" y="203.2" size="1.778" layer="95"/></segment><segment><pinref part="R20" gate="G$1" pin="1"/><wire x1="96.52" y1="203.2" x2="91.44" y2="203.2" width="0.1524" layer="91"/><label x="91.44" y="203.2" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D1_SEGE" class="0"><segment><pinref part="U9" gate="G$1" pin="SEG_E"/><wire x1="50.8" y1="200.66" x2="55.88" y2="200.66" width="0.1524" layer="91"/><label x="55.88" y="200.66" size="1.778" layer="95"/></segment><segment><pinref part="R21" gate="G$1" pin="1"/><wire x1="96.52" y1="193.04" x2="91.44" y2="193.04" width="0.1524" layer="91"/><label x="91.44" y="193.04" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D1_SEGF" class="0"><segment><pinref part="U9" gate="G$1" pin="SEG_F"/><wire x1="50.8" y1="198.12" x2="55.88" y2="198.12" width="0.1524" layer="91"/><label x="55.88" y="198.12" size="1.778" layer="95"/></segment><segment><pinref part="R22" gate="G$1" pin="1"/><wire x1="96.52" y1="182.88" x2="91.44" y2="182.88" width="0.1524" layer="91"/><label x="91.44" y="182.88" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D1_SEGG" class="0"><segment><pinref part="U9" gate="G$1" pin="SEG_G"/><wire x1="50.8" y1="195.58" x2="55.88" y2="195.58" width="0.1524" layer="91"/><label x="55.88" y="195.58" size="1.778" layer="95"/></segment><segment><pinref part="R23" gate="G$1" pin="1"/><wire x1="96.52" y1="172.72" x2="91.44" y2="172.72" width="0.1524" layer="91"/><label x="91.44" y="172.72" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D2_LEDA" class="0"><segment><pinref part="R24" gate="G$1" pin="2"/><wire x1="297.18" y1="233.68" x2="302.26" y2="233.68" width="0.1524" layer="91"/><label x="302.26" y="233.68" size="1.778" layer="95"/></segment><segment><pinref part="DS2" gate="G$1" pin="A"/><wire x1="342.9" y1="210.82" x2="337.82" y2="210.82" width="0.1524" layer="91"/><label x="337.82" y="210.82" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D2_LEDB" class="0"><segment><pinref part="R25" gate="G$1" pin="2"/><wire x1="297.18" y1="223.52" x2="302.26" y2="223.52" width="0.1524" layer="91"/><label x="302.26" y="223.52" size="1.778" layer="95"/></segment><segment><pinref part="DS2" gate="G$1" pin="B"/><wire x1="342.9" y1="208.28" x2="337.82" y2="208.28" width="0.1524" layer="91"/><label x="337.82" y="208.28" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D2_LEDC" class="0"><segment><pinref part="R26" gate="G$1" pin="2"/><wire x1="297.18" y1="213.36" x2="302.26" y2="213.36" width="0.1524" layer="91"/><label x="302.26" y="213.36" size="1.778" layer="95"/></segment><segment><pinref part="DS2" gate="G$1" pin="C"/><wire x1="342.9" y1="205.74" x2="337.82" y2="205.74" width="0.1524" layer="91"/><label x="337.82" y="205.74" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D2_LEDD" class="0"><segment><pinref part="R27" gate="G$1" pin="2"/><wire x1="297.18" y1="203.2" x2="302.26" y2="203.2" width="0.1524" layer="91"/><label x="302.26" y="203.2" size="1.778" layer="95"/></segment><segment><pinref part="DS2" gate="G$1" pin="D"/><wire x1="342.9" y1="203.2" x2="337.82" y2="203.2" width="0.1524" layer="91"/><label x="337.82" y="203.2" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D2_LEDE" class="0"><segment><pinref part="R28" gate="G$1" pin="2"/><wire x1="297.18" y1="193.04" x2="302.26" y2="193.04" width="0.1524" layer="91"/><label x="302.26" y="193.04" size="1.778" layer="95"/></segment><segment><pinref part="DS2" gate="G$1" pin="E"/><wire x1="342.9" y1="200.66" x2="337.82" y2="200.66" width="0.1524" layer="91"/><label x="337.82" y="200.66" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D2_LEDF" class="0"><segment><pinref part="R29" gate="G$1" pin="2"/><wire x1="297.18" y1="182.88" x2="302.26" y2="182.88" width="0.1524" layer="91"/><label x="302.26" y="182.88" size="1.778" layer="95"/></segment><segment><pinref part="DS2" gate="G$1" pin="F"/><wire x1="342.9" y1="198.12" x2="337.82" y2="198.12" width="0.1524" layer="91"/><label x="337.82" y="198.12" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D2_LEDG" class="0"><segment><pinref part="R30" gate="G$1" pin="2"/><wire x1="297.18" y1="172.72" x2="302.26" y2="172.72" width="0.1524" layer="91"/><label x="302.26" y="172.72" size="1.778" layer="95"/></segment><segment><pinref part="DS2" gate="G$1" pin="G"/><wire x1="342.9" y1="195.58" x2="337.82" y2="195.58" width="0.1524" layer="91"/><label x="337.82" y="195.58" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D2_Q0" class="0"><segment><pinref part="U10" gate="G$1" pin="A"/><wire x1="215.9" y1="210.82" x2="210.82" y2="210.82" width="0.1524" layer="91"/><label x="210.82" y="210.82" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D2_Q1" class="0"><segment><pinref part="U10" gate="G$1" pin="B"/><wire x1="215.9" y1="208.28" x2="210.82" y2="208.28" width="0.1524" layer="91"/><label x="210.82" y="208.28" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D2_Q2" class="0"><segment><pinref part="U10" gate="G$1" pin="C"/><wire x1="215.9" y1="205.74" x2="210.82" y2="205.74" width="0.1524" layer="91"/><label x="210.82" y="205.74" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D2_Q3" class="0"><segment><pinref part="U10" gate="G$1" pin="D"/><wire x1="215.9" y1="203.2" x2="210.82" y2="203.2" width="0.1524" layer="91"/><label x="210.82" y="203.2" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D2_SEGA" class="0"><segment><pinref part="U10" gate="G$1" pin="SEG_A"/><wire x1="241.3" y1="210.82" x2="246.38" y2="210.82" width="0.1524" layer="91"/><label x="246.38" y="210.82" size="1.778" layer="95"/></segment><segment><pinref part="R24" gate="G$1" pin="1"/><wire x1="287.02" y1="233.68" x2="281.94" y2="233.68" width="0.1524" layer="91"/><label x="281.94" y="233.68" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D2_SEGB" class="0"><segment><pinref part="U10" gate="G$1" pin="SEG_B"/><wire x1="241.3" y1="208.28" x2="246.38" y2="208.28" width="0.1524" layer="91"/><label x="246.38" y="208.28" size="1.778" layer="95"/></segment><segment><pinref part="R25" gate="G$1" pin="1"/><wire x1="287.02" y1="223.52" x2="281.94" y2="223.52" width="0.1524" layer="91"/><label x="281.94" y="223.52" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D2_SEGC" class="0"><segment><pinref part="U10" gate="G$1" pin="SEG_C"/><wire x1="241.3" y1="205.74" x2="246.38" y2="205.74" width="0.1524" layer="91"/><label x="246.38" y="205.74" size="1.778" layer="95"/></segment><segment><pinref part="R26" gate="G$1" pin="1"/><wire x1="287.02" y1="213.36" x2="281.94" y2="213.36" width="0.1524" layer="91"/><label x="281.94" y="213.36" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D2_SEGD" class="0"><segment><pinref part="U10" gate="G$1" pin="SEG_D"/><wire x1="241.3" y1="203.2" x2="246.38" y2="203.2" width="0.1524" layer="91"/><label x="246.38" y="203.2" size="1.778" layer="95"/></segment><segment><pinref part="R27" gate="G$1" pin="1"/><wire x1="287.02" y1="203.2" x2="281.94" y2="203.2" width="0.1524" layer="91"/><label x="281.94" y="203.2" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D2_SEGE" class="0"><segment><pinref part="U10" gate="G$1" pin="SEG_E"/><wire x1="241.3" y1="200.66" x2="246.38" y2="200.66" width="0.1524" layer="91"/><label x="246.38" y="200.66" size="1.778" layer="95"/></segment><segment><pinref part="R28" gate="G$1" pin="1"/><wire x1="287.02" y1="193.04" x2="281.94" y2="193.04" width="0.1524" layer="91"/><label x="281.94" y="193.04" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D2_SEGF" class="0"><segment><pinref part="U10" gate="G$1" pin="SEG_F"/><wire x1="241.3" y1="198.12" x2="246.38" y2="198.12" width="0.1524" layer="91"/><label x="246.38" y="198.12" size="1.778" layer="95"/></segment><segment><pinref part="R29" gate="G$1" pin="1"/><wire x1="287.02" y1="182.88" x2="281.94" y2="182.88" width="0.1524" layer="91"/><label x="281.94" y="182.88" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D2_SEGG" class="0"><segment><pinref part="U10" gate="G$1" pin="SEG_G"/><wire x1="241.3" y1="195.58" x2="246.38" y2="195.58" width="0.1524" layer="91"/><label x="246.38" y="195.58" size="1.778" layer="95"/></segment><segment><pinref part="R30" gate="G$1" pin="1"/><wire x1="287.02" y1="172.72" x2="281.94" y2="172.72" width="0.1524" layer="91"/><label x="281.94" y="172.72" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D3_LEDA" class="0"><segment><pinref part="R31" gate="G$1" pin="2"/><wire x1="487.68" y1="233.68" x2="492.76" y2="233.68" width="0.1524" layer="91"/><label x="492.76" y="233.68" size="1.778" layer="95"/></segment><segment><pinref part="DS3" gate="G$1" pin="A"/><wire x1="533.4" y1="210.82" x2="528.32" y2="210.82" width="0.1524" layer="91"/><label x="528.32" y="210.82" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D3_LEDB" class="0"><segment><pinref part="R32" gate="G$1" pin="2"/><wire x1="487.68" y1="223.52" x2="492.76" y2="223.52" width="0.1524" layer="91"/><label x="492.76" y="223.52" size="1.778" layer="95"/></segment><segment><pinref part="DS3" gate="G$1" pin="B"/><wire x1="533.4" y1="208.28" x2="528.32" y2="208.28" width="0.1524" layer="91"/><label x="528.32" y="208.28" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D3_LEDC" class="0"><segment><pinref part="R33" gate="G$1" pin="2"/><wire x1="487.68" y1="213.36" x2="492.76" y2="213.36" width="0.1524" layer="91"/><label x="492.76" y="213.36" size="1.778" layer="95"/></segment><segment><pinref part="DS3" gate="G$1" pin="C"/><wire x1="533.4" y1="205.74" x2="528.32" y2="205.74" width="0.1524" layer="91"/><label x="528.32" y="205.74" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D3_LEDD" class="0"><segment><pinref part="R34" gate="G$1" pin="2"/><wire x1="487.68" y1="203.2" x2="492.76" y2="203.2" width="0.1524" layer="91"/><label x="492.76" y="203.2" size="1.778" layer="95"/></segment><segment><pinref part="DS3" gate="G$1" pin="D"/><wire x1="533.4" y1="203.2" x2="528.32" y2="203.2" width="0.1524" layer="91"/><label x="528.32" y="203.2" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D3_LEDE" class="0"><segment><pinref part="R35" gate="G$1" pin="2"/><wire x1="487.68" y1="193.04" x2="492.76" y2="193.04" width="0.1524" layer="91"/><label x="492.76" y="193.04" size="1.778" layer="95"/></segment><segment><pinref part="DS3" gate="G$1" pin="E"/><wire x1="533.4" y1="200.66" x2="528.32" y2="200.66" width="0.1524" layer="91"/><label x="528.32" y="200.66" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D3_LEDF" class="0"><segment><pinref part="R36" gate="G$1" pin="2"/><wire x1="487.68" y1="182.88" x2="492.76" y2="182.88" width="0.1524" layer="91"/><label x="492.76" y="182.88" size="1.778" layer="95"/></segment><segment><pinref part="DS3" gate="G$1" pin="F"/><wire x1="533.4" y1="198.12" x2="528.32" y2="198.12" width="0.1524" layer="91"/><label x="528.32" y="198.12" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D3_LEDG" class="0"><segment><pinref part="R37" gate="G$1" pin="2"/><wire x1="487.68" y1="172.72" x2="492.76" y2="172.72" width="0.1524" layer="91"/><label x="492.76" y="172.72" size="1.778" layer="95"/></segment><segment><pinref part="DS3" gate="G$1" pin="G"/><wire x1="533.4" y1="195.58" x2="528.32" y2="195.58" width="0.1524" layer="91"/><label x="528.32" y="195.58" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D3_Q0" class="0"><segment><pinref part="U11" gate="G$1" pin="A"/><wire x1="406.4" y1="210.82" x2="401.32" y2="210.82" width="0.1524" layer="91"/><label x="401.32" y="210.82" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D3_Q1" class="0"><segment><pinref part="U11" gate="G$1" pin="B"/><wire x1="406.4" y1="208.28" x2="401.32" y2="208.28" width="0.1524" layer="91"/><label x="401.32" y="208.28" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D3_Q2" class="0"><segment><pinref part="U11" gate="G$1" pin="C"/><wire x1="406.4" y1="205.74" x2="401.32" y2="205.74" width="0.1524" layer="91"/><label x="401.32" y="205.74" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D3_Q3" class="0"><segment><pinref part="U11" gate="G$1" pin="D"/><wire x1="406.4" y1="203.2" x2="401.32" y2="203.2" width="0.1524" layer="91"/><label x="401.32" y="203.2" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D3_SEGA" class="0"><segment><pinref part="U11" gate="G$1" pin="SEG_A"/><wire x1="431.8" y1="210.82" x2="436.88" y2="210.82" width="0.1524" layer="91"/><label x="436.88" y="210.82" size="1.778" layer="95"/></segment><segment><pinref part="R31" gate="G$1" pin="1"/><wire x1="477.52" y1="233.68" x2="472.44" y2="233.68" width="0.1524" layer="91"/><label x="472.44" y="233.68" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D3_SEGB" class="0"><segment><pinref part="U11" gate="G$1" pin="SEG_B"/><wire x1="431.8" y1="208.28" x2="436.88" y2="208.28" width="0.1524" layer="91"/><label x="436.88" y="208.28" size="1.778" layer="95"/></segment><segment><pinref part="R32" gate="G$1" pin="1"/><wire x1="477.52" y1="223.52" x2="472.44" y2="223.52" width="0.1524" layer="91"/><label x="472.44" y="223.52" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D3_SEGC" class="0"><segment><pinref part="U11" gate="G$1" pin="SEG_C"/><wire x1="431.8" y1="205.74" x2="436.88" y2="205.74" width="0.1524" layer="91"/><label x="436.88" y="205.74" size="1.778" layer="95"/></segment><segment><pinref part="R33" gate="G$1" pin="1"/><wire x1="477.52" y1="213.36" x2="472.44" y2="213.36" width="0.1524" layer="91"/><label x="472.44" y="213.36" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D3_SEGD" class="0"><segment><pinref part="U11" gate="G$1" pin="SEG_D"/><wire x1="431.8" y1="203.2" x2="436.88" y2="203.2" width="0.1524" layer="91"/><label x="436.88" y="203.2" size="1.778" layer="95"/></segment><segment><pinref part="R34" gate="G$1" pin="1"/><wire x1="477.52" y1="203.2" x2="472.44" y2="203.2" width="0.1524" layer="91"/><label x="472.44" y="203.2" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D3_SEGE" class="0"><segment><pinref part="U11" gate="G$1" pin="SEG_E"/><wire x1="431.8" y1="200.66" x2="436.88" y2="200.66" width="0.1524" layer="91"/><label x="436.88" y="200.66" size="1.778" layer="95"/></segment><segment><pinref part="R35" gate="G$1" pin="1"/><wire x1="477.52" y1="193.04" x2="472.44" y2="193.04" width="0.1524" layer="91"/><label x="472.44" y="193.04" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D3_SEGF" class="0"><segment><pinref part="U11" gate="G$1" pin="SEG_F"/><wire x1="431.8" y1="198.12" x2="436.88" y2="198.12" width="0.1524" layer="91"/><label x="436.88" y="198.12" size="1.778" layer="95"/></segment><segment><pinref part="R36" gate="G$1" pin="1"/><wire x1="477.52" y1="182.88" x2="472.44" y2="182.88" width="0.1524" layer="91"/><label x="472.44" y="182.88" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D3_SEGG" class="0"><segment><pinref part="U11" gate="G$1" pin="SEG_G"/><wire x1="431.8" y1="195.58" x2="436.88" y2="195.58" width="0.1524" layer="91"/><label x="436.88" y="195.58" size="1.778" layer="95"/></segment><segment><pinref part="R37" gate="G$1" pin="1"/><wire x1="477.52" y1="172.72" x2="472.44" y2="172.72" width="0.1524" layer="91"/><label x="472.44" y="172.72" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D4_LEDA" class="0"><segment><pinref part="R38" gate="G$1" pin="2"/><wire x1="678.18" y1="233.68" x2="683.26" y2="233.68" width="0.1524" layer="91"/><label x="683.26" y="233.68" size="1.778" layer="95"/></segment><segment><pinref part="DS4" gate="G$1" pin="A"/><wire x1="723.9" y1="210.82" x2="718.82" y2="210.82" width="0.1524" layer="91"/><label x="718.82" y="210.82" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D4_LEDB" class="0"><segment><pinref part="R39" gate="G$1" pin="2"/><wire x1="678.18" y1="223.52" x2="683.26" y2="223.52" width="0.1524" layer="91"/><label x="683.26" y="223.52" size="1.778" layer="95"/></segment><segment><pinref part="DS4" gate="G$1" pin="B"/><wire x1="723.9" y1="208.28" x2="718.82" y2="208.28" width="0.1524" layer="91"/><label x="718.82" y="208.28" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D4_LEDC" class="0"><segment><pinref part="R40" gate="G$1" pin="2"/><wire x1="678.18" y1="213.36" x2="683.26" y2="213.36" width="0.1524" layer="91"/><label x="683.26" y="213.36" size="1.778" layer="95"/></segment><segment><pinref part="DS4" gate="G$1" pin="C"/><wire x1="723.9" y1="205.74" x2="718.82" y2="205.74" width="0.1524" layer="91"/><label x="718.82" y="205.74" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D4_LEDD" class="0"><segment><pinref part="R41" gate="G$1" pin="2"/><wire x1="678.18" y1="203.2" x2="683.26" y2="203.2" width="0.1524" layer="91"/><label x="683.26" y="203.2" size="1.778" layer="95"/></segment><segment><pinref part="DS4" gate="G$1" pin="D"/><wire x1="723.9" y1="203.2" x2="718.82" y2="203.2" width="0.1524" layer="91"/><label x="718.82" y="203.2" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D4_LEDE" class="0"><segment><pinref part="R42" gate="G$1" pin="2"/><wire x1="678.18" y1="193.04" x2="683.26" y2="193.04" width="0.1524" layer="91"/><label x="683.26" y="193.04" size="1.778" layer="95"/></segment><segment><pinref part="DS4" gate="G$1" pin="E"/><wire x1="723.9" y1="200.66" x2="718.82" y2="200.66" width="0.1524" layer="91"/><label x="718.82" y="200.66" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D4_LEDF" class="0"><segment><pinref part="R43" gate="G$1" pin="2"/><wire x1="678.18" y1="182.88" x2="683.26" y2="182.88" width="0.1524" layer="91"/><label x="683.26" y="182.88" size="1.778" layer="95"/></segment><segment><pinref part="DS4" gate="G$1" pin="F"/><wire x1="723.9" y1="198.12" x2="718.82" y2="198.12" width="0.1524" layer="91"/><label x="718.82" y="198.12" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D4_LEDG" class="0"><segment><pinref part="R44" gate="G$1" pin="2"/><wire x1="678.18" y1="172.72" x2="683.26" y2="172.72" width="0.1524" layer="91"/><label x="683.26" y="172.72" size="1.778" layer="95"/></segment><segment><pinref part="DS4" gate="G$1" pin="G"/><wire x1="723.9" y1="195.58" x2="718.82" y2="195.58" width="0.1524" layer="91"/><label x="718.82" y="195.58" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D4_Q0" class="0"><segment><pinref part="U12" gate="G$1" pin="A"/><wire x1="596.9" y1="210.82" x2="591.82" y2="210.82" width="0.1524" layer="91"/><label x="591.82" y="210.82" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D4_Q1" class="0"><segment><pinref part="U12" gate="G$1" pin="B"/><wire x1="596.9" y1="208.28" x2="591.82" y2="208.28" width="0.1524" layer="91"/><label x="591.82" y="208.28" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D4_Q2" class="0"><segment><pinref part="U12" gate="G$1" pin="C"/><wire x1="596.9" y1="205.74" x2="591.82" y2="205.74" width="0.1524" layer="91"/><label x="591.82" y="205.74" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D4_Q3" class="0"><segment><pinref part="U12" gate="G$1" pin="D"/><wire x1="596.9" y1="203.2" x2="591.82" y2="203.2" width="0.1524" layer="91"/><label x="591.82" y="203.2" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D4_SEGA" class="0"><segment><pinref part="U12" gate="G$1" pin="SEG_A"/><wire x1="622.3" y1="210.82" x2="627.38" y2="210.82" width="0.1524" layer="91"/><label x="627.38" y="210.82" size="1.778" layer="95"/></segment><segment><pinref part="R38" gate="G$1" pin="1"/><wire x1="668.02" y1="233.68" x2="662.94" y2="233.68" width="0.1524" layer="91"/><label x="662.94" y="233.68" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D4_SEGB" class="0"><segment><pinref part="U12" gate="G$1" pin="SEG_B"/><wire x1="622.3" y1="208.28" x2="627.38" y2="208.28" width="0.1524" layer="91"/><label x="627.38" y="208.28" size="1.778" layer="95"/></segment><segment><pinref part="R39" gate="G$1" pin="1"/><wire x1="668.02" y1="223.52" x2="662.94" y2="223.52" width="0.1524" layer="91"/><label x="662.94" y="223.52" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D4_SEGC" class="0"><segment><pinref part="U12" gate="G$1" pin="SEG_C"/><wire x1="622.3" y1="205.74" x2="627.38" y2="205.74" width="0.1524" layer="91"/><label x="627.38" y="205.74" size="1.778" layer="95"/></segment><segment><pinref part="R40" gate="G$1" pin="1"/><wire x1="668.02" y1="213.36" x2="662.94" y2="213.36" width="0.1524" layer="91"/><label x="662.94" y="213.36" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D4_SEGD" class="0"><segment><pinref part="U12" gate="G$1" pin="SEG_D"/><wire x1="622.3" y1="203.2" x2="627.38" y2="203.2" width="0.1524" layer="91"/><label x="627.38" y="203.2" size="1.778" layer="95"/></segment><segment><pinref part="R41" gate="G$1" pin="1"/><wire x1="668.02" y1="203.2" x2="662.94" y2="203.2" width="0.1524" layer="91"/><label x="662.94" y="203.2" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D4_SEGE" class="0"><segment><pinref part="U12" gate="G$1" pin="SEG_E"/><wire x1="622.3" y1="200.66" x2="627.38" y2="200.66" width="0.1524" layer="91"/><label x="627.38" y="200.66" size="1.778" layer="95"/></segment><segment><pinref part="R42" gate="G$1" pin="1"/><wire x1="668.02" y1="193.04" x2="662.94" y2="193.04" width="0.1524" layer="91"/><label x="662.94" y="193.04" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D4_SEGF" class="0"><segment><pinref part="U12" gate="G$1" pin="SEG_F"/><wire x1="622.3" y1="198.12" x2="627.38" y2="198.12" width="0.1524" layer="91"/><label x="627.38" y="198.12" size="1.778" layer="95"/></segment><segment><pinref part="R43" gate="G$1" pin="1"/><wire x1="668.02" y1="182.88" x2="662.94" y2="182.88" width="0.1524" layer="91"/><label x="662.94" y="182.88" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D4_SEGG" class="0"><segment><pinref part="U12" gate="G$1" pin="SEG_G"/><wire x1="622.3" y1="195.58" x2="627.38" y2="195.58" width="0.1524" layer="91"/><label x="627.38" y="195.58" size="1.778" layer="95"/></segment><segment><pinref part="R44" gate="G$1" pin="1"/><wire x1="668.02" y1="172.72" x2="662.94" y2="172.72" width="0.1524" layer="91"/><label x="662.94" y="172.72" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D5_LEDA" class="0"><segment><pinref part="R45" gate="G$1" pin="2"/><wire x1="106.68" y1="137.16" x2="111.76" y2="137.16" width="0.1524" layer="91"/><label x="111.76" y="137.16" size="1.778" layer="95"/></segment><segment><pinref part="DS5" gate="G$1" pin="A"/><wire x1="152.4" y1="114.3" x2="147.32" y2="114.3" width="0.1524" layer="91"/><label x="147.32" y="114.3" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D5_LEDB" class="0"><segment><pinref part="R46" gate="G$1" pin="2"/><wire x1="106.68" y1="127" x2="111.76" y2="127" width="0.1524" layer="91"/><label x="111.76" y="127" size="1.778" layer="95"/></segment><segment><pinref part="DS5" gate="G$1" pin="B"/><wire x1="152.4" y1="111.76" x2="147.32" y2="111.76" width="0.1524" layer="91"/><label x="147.32" y="111.76" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D5_LEDC" class="0"><segment><pinref part="R47" gate="G$1" pin="2"/><wire x1="106.68" y1="116.84" x2="111.76" y2="116.84" width="0.1524" layer="91"/><label x="111.76" y="116.84" size="1.778" layer="95"/></segment><segment><pinref part="DS5" gate="G$1" pin="C"/><wire x1="152.4" y1="109.22" x2="147.32" y2="109.22" width="0.1524" layer="91"/><label x="147.32" y="109.22" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D5_LEDD" class="0"><segment><pinref part="R48" gate="G$1" pin="2"/><wire x1="106.68" y1="106.68" x2="111.76" y2="106.68" width="0.1524" layer="91"/><label x="111.76" y="106.68" size="1.778" layer="95"/></segment><segment><pinref part="DS5" gate="G$1" pin="D"/><wire x1="152.4" y1="106.68" x2="147.32" y2="106.68" width="0.1524" layer="91"/><label x="147.32" y="106.68" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D5_LEDE" class="0"><segment><pinref part="R49" gate="G$1" pin="2"/><wire x1="106.68" y1="96.52" x2="111.76" y2="96.52" width="0.1524" layer="91"/><label x="111.76" y="96.52" size="1.778" layer="95"/></segment><segment><pinref part="DS5" gate="G$1" pin="E"/><wire x1="152.4" y1="104.14" x2="147.32" y2="104.14" width="0.1524" layer="91"/><label x="147.32" y="104.14" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D5_LEDF" class="0"><segment><pinref part="R50" gate="G$1" pin="2"/><wire x1="106.68" y1="86.36" x2="111.76" y2="86.36" width="0.1524" layer="91"/><label x="111.76" y="86.36" size="1.778" layer="95"/></segment><segment><pinref part="DS5" gate="G$1" pin="F"/><wire x1="152.4" y1="101.6" x2="147.32" y2="101.6" width="0.1524" layer="91"/><label x="147.32" y="101.6" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D5_LEDG" class="0"><segment><pinref part="R51" gate="G$1" pin="2"/><wire x1="106.68" y1="76.2" x2="111.76" y2="76.2" width="0.1524" layer="91"/><label x="111.76" y="76.2" size="1.778" layer="95"/></segment><segment><pinref part="DS5" gate="G$1" pin="G"/><wire x1="152.4" y1="99.06" x2="147.32" y2="99.06" width="0.1524" layer="91"/><label x="147.32" y="99.06" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D5_Q0" class="0"><segment><pinref part="U13" gate="G$1" pin="A"/><wire x1="25.4" y1="114.3" x2="20.32" y2="114.3" width="0.1524" layer="91"/><label x="20.32" y="114.3" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D5_Q1" class="0"><segment><pinref part="U13" gate="G$1" pin="B"/><wire x1="25.4" y1="111.76" x2="20.32" y2="111.76" width="0.1524" layer="91"/><label x="20.32" y="111.76" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D5_Q2" class="0"><segment><pinref part="U13" gate="G$1" pin="C"/><wire x1="25.4" y1="109.22" x2="20.32" y2="109.22" width="0.1524" layer="91"/><label x="20.32" y="109.22" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D5_Q3" class="0"><segment><pinref part="U13" gate="G$1" pin="D"/><wire x1="25.4" y1="106.68" x2="20.32" y2="106.68" width="0.1524" layer="91"/><label x="20.32" y="106.68" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D5_SEGA" class="0"><segment><pinref part="U13" gate="G$1" pin="SEG_A"/><wire x1="50.8" y1="114.3" x2="55.88" y2="114.3" width="0.1524" layer="91"/><label x="55.88" y="114.3" size="1.778" layer="95"/></segment><segment><pinref part="R45" gate="G$1" pin="1"/><wire x1="96.52" y1="137.16" x2="91.44" y2="137.16" width="0.1524" layer="91"/><label x="91.44" y="137.16" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D5_SEGB" class="0"><segment><pinref part="U13" gate="G$1" pin="SEG_B"/><wire x1="50.8" y1="111.76" x2="55.88" y2="111.76" width="0.1524" layer="91"/><label x="55.88" y="111.76" size="1.778" layer="95"/></segment><segment><pinref part="R46" gate="G$1" pin="1"/><wire x1="96.52" y1="127" x2="91.44" y2="127" width="0.1524" layer="91"/><label x="91.44" y="127" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D5_SEGC" class="0"><segment><pinref part="U13" gate="G$1" pin="SEG_C"/><wire x1="50.8" y1="109.22" x2="55.88" y2="109.22" width="0.1524" layer="91"/><label x="55.88" y="109.22" size="1.778" layer="95"/></segment><segment><pinref part="R47" gate="G$1" pin="1"/><wire x1="96.52" y1="116.84" x2="91.44" y2="116.84" width="0.1524" layer="91"/><label x="91.44" y="116.84" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D5_SEGD" class="0"><segment><pinref part="U13" gate="G$1" pin="SEG_D"/><wire x1="50.8" y1="106.68" x2="55.88" y2="106.68" width="0.1524" layer="91"/><label x="55.88" y="106.68" size="1.778" layer="95"/></segment><segment><pinref part="R48" gate="G$1" pin="1"/><wire x1="96.52" y1="106.68" x2="91.44" y2="106.68" width="0.1524" layer="91"/><label x="91.44" y="106.68" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D5_SEGE" class="0"><segment><pinref part="U13" gate="G$1" pin="SEG_E"/><wire x1="50.8" y1="104.14" x2="55.88" y2="104.14" width="0.1524" layer="91"/><label x="55.88" y="104.14" size="1.778" layer="95"/></segment><segment><pinref part="R49" gate="G$1" pin="1"/><wire x1="96.52" y1="96.52" x2="91.44" y2="96.52" width="0.1524" layer="91"/><label x="91.44" y="96.52" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D5_SEGF" class="0"><segment><pinref part="U13" gate="G$1" pin="SEG_F"/><wire x1="50.8" y1="101.6" x2="55.88" y2="101.6" width="0.1524" layer="91"/><label x="55.88" y="101.6" size="1.778" layer="95"/></segment><segment><pinref part="R50" gate="G$1" pin="1"/><wire x1="96.52" y1="86.36" x2="91.44" y2="86.36" width="0.1524" layer="91"/><label x="91.44" y="86.36" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D5_SEGG" class="0"><segment><pinref part="U13" gate="G$1" pin="SEG_G"/><wire x1="50.8" y1="99.06" x2="55.88" y2="99.06" width="0.1524" layer="91"/><label x="55.88" y="99.06" size="1.778" layer="95"/></segment><segment><pinref part="R51" gate="G$1" pin="1"/><wire x1="96.52" y1="76.2" x2="91.44" y2="76.2" width="0.1524" layer="91"/><label x="91.44" y="76.2" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D6_LEDA" class="0"><segment><pinref part="R52" gate="G$1" pin="2"/><wire x1="297.18" y1="137.16" x2="302.26" y2="137.16" width="0.1524" layer="91"/><label x="302.26" y="137.16" size="1.778" layer="95"/></segment><segment><pinref part="DS6" gate="G$1" pin="A"/><wire x1="342.9" y1="114.3" x2="337.82" y2="114.3" width="0.1524" layer="91"/><label x="337.82" y="114.3" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D6_LEDB" class="0"><segment><pinref part="R53" gate="G$1" pin="2"/><wire x1="297.18" y1="127" x2="302.26" y2="127" width="0.1524" layer="91"/><label x="302.26" y="127" size="1.778" layer="95"/></segment><segment><pinref part="DS6" gate="G$1" pin="B"/><wire x1="342.9" y1="111.76" x2="337.82" y2="111.76" width="0.1524" layer="91"/><label x="337.82" y="111.76" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D6_LEDC" class="0"><segment><pinref part="R54" gate="G$1" pin="2"/><wire x1="297.18" y1="116.84" x2="302.26" y2="116.84" width="0.1524" layer="91"/><label x="302.26" y="116.84" size="1.778" layer="95"/></segment><segment><pinref part="DS6" gate="G$1" pin="C"/><wire x1="342.9" y1="109.22" x2="337.82" y2="109.22" width="0.1524" layer="91"/><label x="337.82" y="109.22" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D6_LEDD" class="0"><segment><pinref part="R55" gate="G$1" pin="2"/><wire x1="297.18" y1="106.68" x2="302.26" y2="106.68" width="0.1524" layer="91"/><label x="302.26" y="106.68" size="1.778" layer="95"/></segment><segment><pinref part="DS6" gate="G$1" pin="D"/><wire x1="342.9" y1="106.68" x2="337.82" y2="106.68" width="0.1524" layer="91"/><label x="337.82" y="106.68" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D6_LEDE" class="0"><segment><pinref part="R56" gate="G$1" pin="2"/><wire x1="297.18" y1="96.52" x2="302.26" y2="96.52" width="0.1524" layer="91"/><label x="302.26" y="96.52" size="1.778" layer="95"/></segment><segment><pinref part="DS6" gate="G$1" pin="E"/><wire x1="342.9" y1="104.14" x2="337.82" y2="104.14" width="0.1524" layer="91"/><label x="337.82" y="104.14" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D6_LEDF" class="0"><segment><pinref part="R57" gate="G$1" pin="2"/><wire x1="297.18" y1="86.36" x2="302.26" y2="86.36" width="0.1524" layer="91"/><label x="302.26" y="86.36" size="1.778" layer="95"/></segment><segment><pinref part="DS6" gate="G$1" pin="F"/><wire x1="342.9" y1="101.6" x2="337.82" y2="101.6" width="0.1524" layer="91"/><label x="337.82" y="101.6" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D6_LEDG" class="0"><segment><pinref part="R58" gate="G$1" pin="2"/><wire x1="297.18" y1="76.2" x2="302.26" y2="76.2" width="0.1524" layer="91"/><label x="302.26" y="76.2" size="1.778" layer="95"/></segment><segment><pinref part="DS6" gate="G$1" pin="G"/><wire x1="342.9" y1="99.06" x2="337.82" y2="99.06" width="0.1524" layer="91"/><label x="337.82" y="99.06" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D6_Q0" class="0"><segment><pinref part="U14" gate="G$1" pin="A"/><wire x1="215.9" y1="114.3" x2="210.82" y2="114.3" width="0.1524" layer="91"/><label x="210.82" y="114.3" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D6_Q1" class="0"><segment><pinref part="U14" gate="G$1" pin="B"/><wire x1="215.9" y1="111.76" x2="210.82" y2="111.76" width="0.1524" layer="91"/><label x="210.82" y="111.76" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D6_Q2" class="0"><segment><pinref part="U14" gate="G$1" pin="C"/><wire x1="215.9" y1="109.22" x2="210.82" y2="109.22" width="0.1524" layer="91"/><label x="210.82" y="109.22" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D6_Q3" class="0"><segment><pinref part="U14" gate="G$1" pin="D"/><wire x1="215.9" y1="106.68" x2="210.82" y2="106.68" width="0.1524" layer="91"/><label x="210.82" y="106.68" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D6_SEGA" class="0"><segment><pinref part="U14" gate="G$1" pin="SEG_A"/><wire x1="241.3" y1="114.3" x2="246.38" y2="114.3" width="0.1524" layer="91"/><label x="246.38" y="114.3" size="1.778" layer="95"/></segment><segment><pinref part="R52" gate="G$1" pin="1"/><wire x1="287.02" y1="137.16" x2="281.94" y2="137.16" width="0.1524" layer="91"/><label x="281.94" y="137.16" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D6_SEGB" class="0"><segment><pinref part="U14" gate="G$1" pin="SEG_B"/><wire x1="241.3" y1="111.76" x2="246.38" y2="111.76" width="0.1524" layer="91"/><label x="246.38" y="111.76" size="1.778" layer="95"/></segment><segment><pinref part="R53" gate="G$1" pin="1"/><wire x1="287.02" y1="127" x2="281.94" y2="127" width="0.1524" layer="91"/><label x="281.94" y="127" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D6_SEGC" class="0"><segment><pinref part="U14" gate="G$1" pin="SEG_C"/><wire x1="241.3" y1="109.22" x2="246.38" y2="109.22" width="0.1524" layer="91"/><label x="246.38" y="109.22" size="1.778" layer="95"/></segment><segment><pinref part="R54" gate="G$1" pin="1"/><wire x1="287.02" y1="116.84" x2="281.94" y2="116.84" width="0.1524" layer="91"/><label x="281.94" y="116.84" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D6_SEGD" class="0"><segment><pinref part="U14" gate="G$1" pin="SEG_D"/><wire x1="241.3" y1="106.68" x2="246.38" y2="106.68" width="0.1524" layer="91"/><label x="246.38" y="106.68" size="1.778" layer="95"/></segment><segment><pinref part="R55" gate="G$1" pin="1"/><wire x1="287.02" y1="106.68" x2="281.94" y2="106.68" width="0.1524" layer="91"/><label x="281.94" y="106.68" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D6_SEGE" class="0"><segment><pinref part="U14" gate="G$1" pin="SEG_E"/><wire x1="241.3" y1="104.14" x2="246.38" y2="104.14" width="0.1524" layer="91"/><label x="246.38" y="104.14" size="1.778" layer="95"/></segment><segment><pinref part="R56" gate="G$1" pin="1"/><wire x1="287.02" y1="96.52" x2="281.94" y2="96.52" width="0.1524" layer="91"/><label x="281.94" y="96.52" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D6_SEGF" class="0"><segment><pinref part="U14" gate="G$1" pin="SEG_F"/><wire x1="241.3" y1="101.6" x2="246.38" y2="101.6" width="0.1524" layer="91"/><label x="246.38" y="101.6" size="1.778" layer="95"/></segment><segment><pinref part="R57" gate="G$1" pin="1"/><wire x1="287.02" y1="86.36" x2="281.94" y2="86.36" width="0.1524" layer="91"/><label x="281.94" y="86.36" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D6_SEGG" class="0"><segment><pinref part="U14" gate="G$1" pin="SEG_G"/><wire x1="241.3" y1="99.06" x2="246.38" y2="99.06" width="0.1524" layer="91"/><label x="246.38" y="99.06" size="1.778" layer="95"/></segment><segment><pinref part="R58" gate="G$1" pin="1"/><wire x1="287.02" y1="76.2" x2="281.94" y2="76.2" width="0.1524" layer="91"/><label x="281.94" y="76.2" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D7_LEDA" class="0"><segment><pinref part="R59" gate="G$1" pin="2"/><wire x1="487.68" y1="137.16" x2="492.76" y2="137.16" width="0.1524" layer="91"/><label x="492.76" y="137.16" size="1.778" layer="95"/></segment><segment><pinref part="DS7" gate="G$1" pin="A"/><wire x1="533.4" y1="114.3" x2="528.32" y2="114.3" width="0.1524" layer="91"/><label x="528.32" y="114.3" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D7_LEDB" class="0"><segment><pinref part="R60" gate="G$1" pin="2"/><wire x1="487.68" y1="127" x2="492.76" y2="127" width="0.1524" layer="91"/><label x="492.76" y="127" size="1.778" layer="95"/></segment><segment><pinref part="DS7" gate="G$1" pin="B"/><wire x1="533.4" y1="111.76" x2="528.32" y2="111.76" width="0.1524" layer="91"/><label x="528.32" y="111.76" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D7_LEDC" class="0"><segment><pinref part="R61" gate="G$1" pin="2"/><wire x1="487.68" y1="116.84" x2="492.76" y2="116.84" width="0.1524" layer="91"/><label x="492.76" y="116.84" size="1.778" layer="95"/></segment><segment><pinref part="DS7" gate="G$1" pin="C"/><wire x1="533.4" y1="109.22" x2="528.32" y2="109.22" width="0.1524" layer="91"/><label x="528.32" y="109.22" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D7_LEDD" class="0"><segment><pinref part="R62" gate="G$1" pin="2"/><wire x1="487.68" y1="106.68" x2="492.76" y2="106.68" width="0.1524" layer="91"/><label x="492.76" y="106.68" size="1.778" layer="95"/></segment><segment><pinref part="DS7" gate="G$1" pin="D"/><wire x1="533.4" y1="106.68" x2="528.32" y2="106.68" width="0.1524" layer="91"/><label x="528.32" y="106.68" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D7_LEDE" class="0"><segment><pinref part="R63" gate="G$1" pin="2"/><wire x1="487.68" y1="96.52" x2="492.76" y2="96.52" width="0.1524" layer="91"/><label x="492.76" y="96.52" size="1.778" layer="95"/></segment><segment><pinref part="DS7" gate="G$1" pin="E"/><wire x1="533.4" y1="104.14" x2="528.32" y2="104.14" width="0.1524" layer="91"/><label x="528.32" y="104.14" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D7_LEDF" class="0"><segment><pinref part="R64" gate="G$1" pin="2"/><wire x1="487.68" y1="86.36" x2="492.76" y2="86.36" width="0.1524" layer="91"/><label x="492.76" y="86.36" size="1.778" layer="95"/></segment><segment><pinref part="DS7" gate="G$1" pin="F"/><wire x1="533.4" y1="101.6" x2="528.32" y2="101.6" width="0.1524" layer="91"/><label x="528.32" y="101.6" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D7_LEDG" class="0"><segment><pinref part="R65" gate="G$1" pin="2"/><wire x1="487.68" y1="76.2" x2="492.76" y2="76.2" width="0.1524" layer="91"/><label x="492.76" y="76.2" size="1.778" layer="95"/></segment><segment><pinref part="DS7" gate="G$1" pin="G"/><wire x1="533.4" y1="99.06" x2="528.32" y2="99.06" width="0.1524" layer="91"/><label x="528.32" y="99.06" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D7_Q0" class="0"><segment><pinref part="U15" gate="G$1" pin="A"/><wire x1="406.4" y1="114.3" x2="401.32" y2="114.3" width="0.1524" layer="91"/><label x="401.32" y="114.3" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D7_Q1" class="0"><segment><pinref part="U15" gate="G$1" pin="B"/><wire x1="406.4" y1="111.76" x2="401.32" y2="111.76" width="0.1524" layer="91"/><label x="401.32" y="111.76" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D7_Q2" class="0"><segment><pinref part="U15" gate="G$1" pin="C"/><wire x1="406.4" y1="109.22" x2="401.32" y2="109.22" width="0.1524" layer="91"/><label x="401.32" y="109.22" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D7_Q3" class="0"><segment><pinref part="U15" gate="G$1" pin="D"/><wire x1="406.4" y1="106.68" x2="401.32" y2="106.68" width="0.1524" layer="91"/><label x="401.32" y="106.68" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D7_SEGA" class="0"><segment><pinref part="U15" gate="G$1" pin="SEG_A"/><wire x1="431.8" y1="114.3" x2="436.88" y2="114.3" width="0.1524" layer="91"/><label x="436.88" y="114.3" size="1.778" layer="95"/></segment><segment><pinref part="R59" gate="G$1" pin="1"/><wire x1="477.52" y1="137.16" x2="472.44" y2="137.16" width="0.1524" layer="91"/><label x="472.44" y="137.16" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D7_SEGB" class="0"><segment><pinref part="U15" gate="G$1" pin="SEG_B"/><wire x1="431.8" y1="111.76" x2="436.88" y2="111.76" width="0.1524" layer="91"/><label x="436.88" y="111.76" size="1.778" layer="95"/></segment><segment><pinref part="R60" gate="G$1" pin="1"/><wire x1="477.52" y1="127" x2="472.44" y2="127" width="0.1524" layer="91"/><label x="472.44" y="127" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D7_SEGC" class="0"><segment><pinref part="U15" gate="G$1" pin="SEG_C"/><wire x1="431.8" y1="109.22" x2="436.88" y2="109.22" width="0.1524" layer="91"/><label x="436.88" y="109.22" size="1.778" layer="95"/></segment><segment><pinref part="R61" gate="G$1" pin="1"/><wire x1="477.52" y1="116.84" x2="472.44" y2="116.84" width="0.1524" layer="91"/><label x="472.44" y="116.84" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D7_SEGD" class="0"><segment><pinref part="U15" gate="G$1" pin="SEG_D"/><wire x1="431.8" y1="106.68" x2="436.88" y2="106.68" width="0.1524" layer="91"/><label x="436.88" y="106.68" size="1.778" layer="95"/></segment><segment><pinref part="R62" gate="G$1" pin="1"/><wire x1="477.52" y1="106.68" x2="472.44" y2="106.68" width="0.1524" layer="91"/><label x="472.44" y="106.68" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D7_SEGE" class="0"><segment><pinref part="U15" gate="G$1" pin="SEG_E"/><wire x1="431.8" y1="104.14" x2="436.88" y2="104.14" width="0.1524" layer="91"/><label x="436.88" y="104.14" size="1.778" layer="95"/></segment><segment><pinref part="R63" gate="G$1" pin="1"/><wire x1="477.52" y1="96.52" x2="472.44" y2="96.52" width="0.1524" layer="91"/><label x="472.44" y="96.52" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D7_SEGF" class="0"><segment><pinref part="U15" gate="G$1" pin="SEG_F"/><wire x1="431.8" y1="101.6" x2="436.88" y2="101.6" width="0.1524" layer="91"/><label x="436.88" y="101.6" size="1.778" layer="95"/></segment><segment><pinref part="R64" gate="G$1" pin="1"/><wire x1="477.52" y1="86.36" x2="472.44" y2="86.36" width="0.1524" layer="91"/><label x="472.44" y="86.36" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D7_SEGG" class="0"><segment><pinref part="U15" gate="G$1" pin="SEG_G"/><wire x1="431.8" y1="99.06" x2="436.88" y2="99.06" width="0.1524" layer="91"/><label x="436.88" y="99.06" size="1.778" layer="95"/></segment><segment><pinref part="R65" gate="G$1" pin="1"/><wire x1="477.52" y1="76.2" x2="472.44" y2="76.2" width="0.1524" layer="91"/><label x="472.44" y="76.2" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D8_LEDA" class="0"><segment><pinref part="R66" gate="G$1" pin="2"/><wire x1="678.18" y1="137.16" x2="683.26" y2="137.16" width="0.1524" layer="91"/><label x="683.26" y="137.16" size="1.778" layer="95"/></segment><segment><pinref part="DS8" gate="G$1" pin="A"/><wire x1="723.9" y1="114.3" x2="718.82" y2="114.3" width="0.1524" layer="91"/><label x="718.82" y="114.3" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D8_LEDB" class="0"><segment><pinref part="R67" gate="G$1" pin="2"/><wire x1="678.18" y1="127" x2="683.26" y2="127" width="0.1524" layer="91"/><label x="683.26" y="127" size="1.778" layer="95"/></segment><segment><pinref part="DS8" gate="G$1" pin="B"/><wire x1="723.9" y1="111.76" x2="718.82" y2="111.76" width="0.1524" layer="91"/><label x="718.82" y="111.76" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D8_LEDC" class="0"><segment><pinref part="R68" gate="G$1" pin="2"/><wire x1="678.18" y1="116.84" x2="683.26" y2="116.84" width="0.1524" layer="91"/><label x="683.26" y="116.84" size="1.778" layer="95"/></segment><segment><pinref part="DS8" gate="G$1" pin="C"/><wire x1="723.9" y1="109.22" x2="718.82" y2="109.22" width="0.1524" layer="91"/><label x="718.82" y="109.22" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D8_LEDD" class="0"><segment><pinref part="R69" gate="G$1" pin="2"/><wire x1="678.18" y1="106.68" x2="683.26" y2="106.68" width="0.1524" layer="91"/><label x="683.26" y="106.68" size="1.778" layer="95"/></segment><segment><pinref part="DS8" gate="G$1" pin="D"/><wire x1="723.9" y1="106.68" x2="718.82" y2="106.68" width="0.1524" layer="91"/><label x="718.82" y="106.68" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D8_LEDE" class="0"><segment><pinref part="R70" gate="G$1" pin="2"/><wire x1="678.18" y1="96.52" x2="683.26" y2="96.52" width="0.1524" layer="91"/><label x="683.26" y="96.52" size="1.778" layer="95"/></segment><segment><pinref part="DS8" gate="G$1" pin="E"/><wire x1="723.9" y1="104.14" x2="718.82" y2="104.14" width="0.1524" layer="91"/><label x="718.82" y="104.14" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D8_LEDF" class="0"><segment><pinref part="R71" gate="G$1" pin="2"/><wire x1="678.18" y1="86.36" x2="683.26" y2="86.36" width="0.1524" layer="91"/><label x="683.26" y="86.36" size="1.778" layer="95"/></segment><segment><pinref part="DS8" gate="G$1" pin="F"/><wire x1="723.9" y1="101.6" x2="718.82" y2="101.6" width="0.1524" layer="91"/><label x="718.82" y="101.6" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D8_LEDG" class="0"><segment><pinref part="R72" gate="G$1" pin="2"/><wire x1="678.18" y1="76.2" x2="683.26" y2="76.2" width="0.1524" layer="91"/><label x="683.26" y="76.2" size="1.778" layer="95"/></segment><segment><pinref part="DS8" gate="G$1" pin="G"/><wire x1="723.9" y1="99.06" x2="718.82" y2="99.06" width="0.1524" layer="91"/><label x="718.82" y="99.06" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D8_Q0" class="0"><segment><pinref part="U16" gate="G$1" pin="A"/><wire x1="596.9" y1="114.3" x2="591.82" y2="114.3" width="0.1524" layer="91"/><label x="591.82" y="114.3" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D8_Q1" class="0"><segment><pinref part="U16" gate="G$1" pin="B"/><wire x1="596.9" y1="111.76" x2="591.82" y2="111.76" width="0.1524" layer="91"/><label x="591.82" y="111.76" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D8_Q2" class="0"><segment><pinref part="U16" gate="G$1" pin="C"/><wire x1="596.9" y1="109.22" x2="591.82" y2="109.22" width="0.1524" layer="91"/><label x="591.82" y="109.22" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D8_Q3" class="0"><segment><pinref part="U16" gate="G$1" pin="D"/><wire x1="596.9" y1="106.68" x2="591.82" y2="106.68" width="0.1524" layer="91"/><label x="591.82" y="106.68" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D8_SEGA" class="0"><segment><pinref part="U16" gate="G$1" pin="SEG_A"/><wire x1="622.3" y1="114.3" x2="627.38" y2="114.3" width="0.1524" layer="91"/><label x="627.38" y="114.3" size="1.778" layer="95"/></segment><segment><pinref part="R66" gate="G$1" pin="1"/><wire x1="668.02" y1="137.16" x2="662.94" y2="137.16" width="0.1524" layer="91"/><label x="662.94" y="137.16" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D8_SEGB" class="0"><segment><pinref part="U16" gate="G$1" pin="SEG_B"/><wire x1="622.3" y1="111.76" x2="627.38" y2="111.76" width="0.1524" layer="91"/><label x="627.38" y="111.76" size="1.778" layer="95"/></segment><segment><pinref part="R67" gate="G$1" pin="1"/><wire x1="668.02" y1="127" x2="662.94" y2="127" width="0.1524" layer="91"/><label x="662.94" y="127" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D8_SEGC" class="0"><segment><pinref part="U16" gate="G$1" pin="SEG_C"/><wire x1="622.3" y1="109.22" x2="627.38" y2="109.22" width="0.1524" layer="91"/><label x="627.38" y="109.22" size="1.778" layer="95"/></segment><segment><pinref part="R68" gate="G$1" pin="1"/><wire x1="668.02" y1="116.84" x2="662.94" y2="116.84" width="0.1524" layer="91"/><label x="662.94" y="116.84" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D8_SEGD" class="0"><segment><pinref part="U16" gate="G$1" pin="SEG_D"/><wire x1="622.3" y1="106.68" x2="627.38" y2="106.68" width="0.1524" layer="91"/><label x="627.38" y="106.68" size="1.778" layer="95"/></segment><segment><pinref part="R69" gate="G$1" pin="1"/><wire x1="668.02" y1="106.68" x2="662.94" y2="106.68" width="0.1524" layer="91"/><label x="662.94" y="106.68" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D8_SEGE" class="0"><segment><pinref part="U16" gate="G$1" pin="SEG_E"/><wire x1="622.3" y1="104.14" x2="627.38" y2="104.14" width="0.1524" layer="91"/><label x="627.38" y="104.14" size="1.778" layer="95"/></segment><segment><pinref part="R70" gate="G$1" pin="1"/><wire x1="668.02" y1="96.52" x2="662.94" y2="96.52" width="0.1524" layer="91"/><label x="662.94" y="96.52" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D8_SEGF" class="0"><segment><pinref part="U16" gate="G$1" pin="SEG_F"/><wire x1="622.3" y1="101.6" x2="627.38" y2="101.6" width="0.1524" layer="91"/><label x="627.38" y="101.6" size="1.778" layer="95"/></segment><segment><pinref part="R71" gate="G$1" pin="1"/><wire x1="668.02" y1="86.36" x2="662.94" y2="86.36" width="0.1524" layer="91"/><label x="662.94" y="86.36" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="D8_SEGG" class="0"><segment><pinref part="U16" gate="G$1" pin="SEG_G"/><wire x1="622.3" y1="99.06" x2="627.38" y2="99.06" width="0.1524" layer="91"/><label x="627.38" y="99.06" size="1.778" layer="95"/></segment><segment><pinref part="R72" gate="G$1" pin="1"/><wire x1="668.02" y1="76.2" x2="662.94" y2="76.2" width="0.1524" layer="91"/><label x="662.94" y="76.2" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="GND" class="0"><segment><pinref part="U9" gate="G$1" pin="GND"/><wire x1="25.4" y1="193.04" x2="20.32" y2="193.04" width="0.1524" layer="91"/><label x="20.32" y="193.04" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U10" gate="G$1" pin="GND"/><wire x1="215.9" y1="193.04" x2="210.82" y2="193.04" width="0.1524" layer="91"/><label x="210.82" y="193.04" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U11" gate="G$1" pin="GND"/><wire x1="406.4" y1="193.04" x2="401.32" y2="193.04" width="0.1524" layer="91"/><label x="401.32" y="193.04" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U12" gate="G$1" pin="GND"/><wire x1="596.9" y1="193.04" x2="591.82" y2="193.04" width="0.1524" layer="91"/><label x="591.82" y="193.04" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U13" gate="G$1" pin="GND"/><wire x1="25.4" y1="96.52" x2="20.32" y2="96.52" width="0.1524" layer="91"/><label x="20.32" y="96.52" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U14" gate="G$1" pin="GND"/><wire x1="215.9" y1="96.52" x2="210.82" y2="96.52" width="0.1524" layer="91"/><label x="210.82" y="96.52" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U15" gate="G$1" pin="GND"/><wire x1="406.4" y1="96.52" x2="401.32" y2="96.52" width="0.1524" layer="91"/><label x="401.32" y="96.52" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U16" gate="G$1" pin="!RBI"/><wire x1="596.9" y1="101.6" x2="591.82" y2="101.6" width="0.1524" layer="91"/><label x="591.82" y="101.6" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U16" gate="G$1" pin="GND"/><wire x1="596.9" y1="96.52" x2="591.82" y2="96.52" width="0.1524" layer="91"/><label x="591.82" y="96.52" size="1.778" layer="95" rot="R180"/></segment></net>
<net name="RBO3" class="0"><segment><pinref part="U10" gate="G$1" pin="!RBI"/><wire x1="215.9" y1="198.12" x2="210.82" y2="198.12" width="0.1524" layer="91"/><label x="210.82" y="198.12" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U11" gate="G$1" pin="!BI/!RBO"/><wire x1="431.8" y1="193.04" x2="436.88" y2="193.04" width="0.1524" layer="91"/><label x="436.88" y="193.04" size="1.778" layer="95"/></segment></net>
<net name="RBO4" class="0"><segment><pinref part="U11" gate="G$1" pin="!RBI"/><wire x1="406.4" y1="198.12" x2="401.32" y2="198.12" width="0.1524" layer="91"/><label x="401.32" y="198.12" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U12" gate="G$1" pin="!BI/!RBO"/><wire x1="622.3" y1="193.04" x2="627.38" y2="193.04" width="0.1524" layer="91"/><label x="627.38" y="193.04" size="1.778" layer="95"/></segment></net>
<net name="RBO5" class="0"><segment><pinref part="U12" gate="G$1" pin="!RBI"/><wire x1="596.9" y1="198.12" x2="591.82" y2="198.12" width="0.1524" layer="91"/><label x="591.82" y="198.12" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U13" gate="G$1" pin="!BI/!RBO"/><wire x1="50.8" y1="96.52" x2="55.88" y2="96.52" width="0.1524" layer="91"/><label x="55.88" y="96.52" size="1.778" layer="95"/></segment></net>
<net name="RBO6" class="0"><segment><pinref part="U13" gate="G$1" pin="!RBI"/><wire x1="25.4" y1="101.6" x2="20.32" y2="101.6" width="0.1524" layer="91"/><label x="20.32" y="101.6" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U14" gate="G$1" pin="!BI/!RBO"/><wire x1="241.3" y1="96.52" x2="246.38" y2="96.52" width="0.1524" layer="91"/><label x="246.38" y="96.52" size="1.778" layer="95"/></segment></net>
<net name="RBO7" class="0"><segment><pinref part="U14" gate="G$1" pin="!RBI"/><wire x1="215.9" y1="101.6" x2="210.82" y2="101.6" width="0.1524" layer="91"/><label x="210.82" y="101.6" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U15" gate="G$1" pin="!BI/!RBO"/><wire x1="431.8" y1="96.52" x2="436.88" y2="96.52" width="0.1524" layer="91"/><label x="436.88" y="96.52" size="1.778" layer="95"/></segment></net>
<net name="RBO8" class="0"><segment><pinref part="U15" gate="G$1" pin="!RBI"/><wire x1="406.4" y1="101.6" x2="401.32" y2="101.6" width="0.1524" layer="91"/><label x="401.32" y="101.6" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U16" gate="G$1" pin="!BI/!RBO"/><wire x1="622.3" y1="96.52" x2="627.38" y2="96.52" width="0.1524" layer="91"/><label x="627.38" y="96.52" size="1.778" layer="95"/></segment></net>
<net name="VCC" class="0"><segment><pinref part="U9" gate="G$1" pin="!LT"/><wire x1="25.4" y1="200.66" x2="20.32" y2="200.66" width="0.1524" layer="91"/><label x="20.32" y="200.66" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U9" gate="G$1" pin="!RBI"/><wire x1="25.4" y1="198.12" x2="20.32" y2="198.12" width="0.1524" layer="91"/><label x="20.32" y="198.12" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U9" gate="G$1" pin="VCC"/><wire x1="25.4" y1="195.58" x2="20.32" y2="195.58" width="0.1524" layer="91"/><label x="20.32" y="195.58" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="DS1" gate="G$1" pin="CA"/><wire x1="177.8" y1="210.82" x2="182.88" y2="210.82" width="0.1524" layer="91"/><label x="182.88" y="210.82" size="1.778" layer="95"/></segment><segment><pinref part="U10" gate="G$1" pin="!LT"/><wire x1="215.9" y1="200.66" x2="210.82" y2="200.66" width="0.1524" layer="91"/><label x="210.82" y="200.66" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U10" gate="G$1" pin="VCC"/><wire x1="215.9" y1="195.58" x2="210.82" y2="195.58" width="0.1524" layer="91"/><label x="210.82" y="195.58" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="DS2" gate="G$1" pin="CA"/><wire x1="368.3" y1="210.82" x2="373.38" y2="210.82" width="0.1524" layer="91"/><label x="373.38" y="210.82" size="1.778" layer="95"/></segment><segment><pinref part="U11" gate="G$1" pin="!LT"/><wire x1="406.4" y1="200.66" x2="401.32" y2="200.66" width="0.1524" layer="91"/><label x="401.32" y="200.66" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U11" gate="G$1" pin="VCC"/><wire x1="406.4" y1="195.58" x2="401.32" y2="195.58" width="0.1524" layer="91"/><label x="401.32" y="195.58" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="DS3" gate="G$1" pin="CA"/><wire x1="558.8" y1="210.82" x2="563.88" y2="210.82" width="0.1524" layer="91"/><label x="563.88" y="210.82" size="1.778" layer="95"/></segment><segment><pinref part="U12" gate="G$1" pin="!LT"/><wire x1="596.9" y1="200.66" x2="591.82" y2="200.66" width="0.1524" layer="91"/><label x="591.82" y="200.66" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U12" gate="G$1" pin="VCC"/><wire x1="596.9" y1="195.58" x2="591.82" y2="195.58" width="0.1524" layer="91"/><label x="591.82" y="195.58" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="DS4" gate="G$1" pin="CA"/><wire x1="749.3" y1="210.82" x2="754.38" y2="210.82" width="0.1524" layer="91"/><label x="754.38" y="210.82" size="1.778" layer="95"/></segment><segment><pinref part="U13" gate="G$1" pin="!LT"/><wire x1="25.4" y1="104.14" x2="20.32" y2="104.14" width="0.1524" layer="91"/><label x="20.32" y="104.14" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U13" gate="G$1" pin="VCC"/><wire x1="25.4" y1="99.06" x2="20.32" y2="99.06" width="0.1524" layer="91"/><label x="20.32" y="99.06" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="DS5" gate="G$1" pin="CA"/><wire x1="177.8" y1="114.3" x2="182.88" y2="114.3" width="0.1524" layer="91"/><label x="182.88" y="114.3" size="1.778" layer="95"/></segment><segment><pinref part="U14" gate="G$1" pin="!LT"/><wire x1="215.9" y1="104.14" x2="210.82" y2="104.14" width="0.1524" layer="91"/><label x="210.82" y="104.14" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U14" gate="G$1" pin="VCC"/><wire x1="215.9" y1="99.06" x2="210.82" y2="99.06" width="0.1524" layer="91"/><label x="210.82" y="99.06" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="DS6" gate="G$1" pin="CA"/><wire x1="368.3" y1="114.3" x2="373.38" y2="114.3" width="0.1524" layer="91"/><label x="373.38" y="114.3" size="1.778" layer="95"/></segment><segment><pinref part="U15" gate="G$1" pin="!LT"/><wire x1="406.4" y1="104.14" x2="401.32" y2="104.14" width="0.1524" layer="91"/><label x="401.32" y="104.14" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U15" gate="G$1" pin="VCC"/><wire x1="406.4" y1="99.06" x2="401.32" y2="99.06" width="0.1524" layer="91"/><label x="401.32" y="99.06" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="DS7" gate="G$1" pin="CA"/><wire x1="558.8" y1="114.3" x2="563.88" y2="114.3" width="0.1524" layer="91"/><label x="563.88" y="114.3" size="1.778" layer="95"/></segment><segment><pinref part="U16" gate="G$1" pin="!LT"/><wire x1="596.9" y1="104.14" x2="591.82" y2="104.14" width="0.1524" layer="91"/><label x="591.82" y="104.14" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="U16" gate="G$1" pin="VCC"/><wire x1="596.9" y1="99.06" x2="591.82" y2="99.06" width="0.1524" layer="91"/><label x="591.82" y="99.06" size="1.778" layer="95" rot="R180"/></segment><segment><pinref part="DS8" gate="G$1" pin="CA"/><wire x1="749.3" y1="114.3" x2="754.38" y2="114.3" width="0.1524" layer="91"/><label x="754.38" y="114.3" size="1.778" layer="95"/></segment></net>
</nets></sheet>
</sheets>
</schematic>
</drawing>
</eagle>
