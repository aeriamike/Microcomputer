<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1(31:0)" />
        <signal name="S(32:0)" />
        <signal name="S(31:0)" />
        <signal name="XLXN_9(31:0)" />
        <signal name="XLXN_10(31:0)" />
        <signal name="XLXN_11(31:0)" />
        <signal name="A(31:0)" />
        <signal name="ALU_operation(2:0)" />
        <signal name="res(31:0)" />
        <signal name="zero" />
        <signal name="N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,S(32)" />
        <signal name="N0" />
        <signal name="overflow" />
        <signal name="XLXN_2(31:0)" />
        <signal name="ALU_operation(2)" />
        <signal name="B(31:0)" />
        <signal name="XLXN_39(31:0)" />
        <signal name="XLXN_41(31:0)" />
        <port polarity="Input" name="A(31:0)" />
        <port polarity="Input" name="ALU_operation(2:0)" />
        <port polarity="Output" name="res(31:0)" />
        <port polarity="Output" name="zero" />
        <port polarity="Output" name="overflow" />
        <port polarity="Input" name="B(31:0)" />
        <blockdef name="and32">
            <timestamp>2016-2-25T4:28:0</timestamp>
            <line x2="32" y1="-96" y2="-96" style="linewidth:W" x1="64" />
            <line x2="28" y1="-32" y2="-32" style="linewidth:W" x1="64" />
            <line x2="64" y1="-16" y2="-16" x1="144" />
            <line x2="64" y1="-16" y2="-112" x1="64" />
            <line x2="144" y1="-112" y2="-112" x1="64" />
            <arc ex="144" ey="-112" sx="144" sy="-16" r="48" cx="144" cy="-64" />
            <line x2="224" y1="-64" y2="-64" style="linewidth:W" x1="192" />
        </blockdef>
        <blockdef name="ADC32">
            <timestamp>2016-2-25T4:28:0</timestamp>
            <line x2="48" y1="-256" y2="-256" style="linewidth:W" x1="64" />
            <line x2="48" y1="-128" y2="-128" style="linewidth:W" x1="64" />
            <line x2="64" y1="-224" y2="-300" x1="64" />
            <line x2="112" y1="-224" y2="-192" x1="64" />
            <line x2="112" y1="-160" y2="-192" x1="64" />
            <line x2="64" y1="-160" y2="-76" x1="64" />
            <line x2="224" y1="-76" y2="-140" x1="64" />
            <line x2="224" y1="-300" y2="-236" x1="64" />
            <line x2="224" y1="-140" y2="-236" x1="224" />
            <line x2="240" y1="-192" y2="-192" style="linewidth:W" x1="224" />
            <line x2="128" y1="-304" y2="-276" x1="128" />
        </blockdef>
        <blockdef name="xor32">
            <timestamp>2016-2-25T4:28:0</timestamp>
            <arc ex="80" ey="-112" sx="80" sy="-16" r="56" cx="48" cy="-64" />
            <line x2="80" y1="-112" y2="-112" x1="144" />
            <line x2="80" y1="-16" y2="-16" x1="144" />
            <arc ex="144" ey="-112" sx="224" sy="-64" r="88" cx="148" cy="-24" />
            <arc ex="60" ey="-112" sx="64" sy="-16" r="56" cx="32" cy="-64" />
            <arc ex="224" ey="-64" sx="144" sy="-16" r="88" cx="148" cy="-104" />
            <line x2="80" y1="-96" y2="-96" style="linewidth:W" x1="32" />
            <line x2="80" y1="-32" y2="-32" style="linewidth:W" x1="32" />
            <line x2="228" y1="-64" y2="-64" style="linewidth:W" x1="256" />
        </blockdef>
        <blockdef name="nor32">
            <timestamp>2016-3-29T12:28:21</timestamp>
            <line x2="64" y1="-112" y2="-112" x1="128" />
            <arc ex="64" ey="-112" sx="64" sy="-16" r="56" cx="32" cy="-64" />
            <line x2="64" y1="-16" y2="-16" x1="128" />
            <arc ex="208" ey="-64" sx="128" sy="-16" r="88" cx="132" cy="-104" />
            <arc ex="128" ey="-112" sx="208" sy="-64" r="88" cx="132" cy="-24" />
            <line x2="224" y1="-64" y2="-64" style="linewidth:W" x1="256" />
            <circle style="linewidth:W" r="8" cx="216" cy="-64" />
            <line x2="48" y1="-96" y2="-96" style="linewidth:W" x1="80" />
            <line x2="48" y1="-32" y2="-32" style="linewidth:W" x1="80" />
        </blockdef>
        <blockdef name="srl32">
            <timestamp>2016-2-25T4:28:0</timestamp>
            <rect width="184" x="64" y="-128" height="128" />
            <line x2="32" y1="-96" y2="-96" style="linewidth:W" x1="64" />
            <line x2="32" y1="-32" y2="-32" style="linewidth:W" x1="64" />
            <line x2="288" y1="-64" y2="-64" style="linewidth:W" x1="248" />
        </blockdef>
        <blockdef name="MUX8T1_32">
            <timestamp>2016-2-25T4:28:0</timestamp>
            <rect width="68" x="12" y="-264" height="264" />
            <line x2="48" y1="-264" y2="-272" style="linewidth:W" x1="48" />
            <line x2="0" y1="-16" y2="-16" style="linewidth:W" x1="12" />
            <line x2="0" y1="-48" y2="-48" style="linewidth:W" x1="12" />
            <line x2="0" y1="-80" y2="-80" style="linewidth:W" x1="12" />
            <line x2="0" y1="-112" y2="-112" style="linewidth:W" x1="12" />
            <line x2="0" y1="-144" y2="-144" style="linewidth:W" x1="12" />
            <line x2="0" y1="-176" y2="-176" style="linewidth:W" x1="12" />
            <line x2="0" y1="-208" y2="-208" style="linewidth:W" x1="12" />
            <line x2="0" y1="-240" y2="-240" style="linewidth:W" x1="12" />
            <line x2="96" y1="-160" y2="-160" style="linewidth:W" x1="80" />
        </blockdef>
        <blockdef name="or_bit_32">
            <timestamp>2016-2-25T4:28:0</timestamp>
            <rect width="220" x="64" y="-104" height="112" />
            <line x2="32" y1="-48" y2="-48" style="linewidth:W" x1="64" />
            <arc ex="260" ey="-48" sx="180" sy="0" r="88" cx="184" cy="-88" />
            <line x2="116" y1="0" y2="0" x1="180" />
            <line x2="116" y1="-96" y2="-96" x1="180" />
            <arc ex="116" ey="-96" sx="116" sy="0" r="56" cx="84" cy="-48" />
            <arc ex="180" ey="-96" sx="260" sy="-48" r="88" cx="184" cy="-8" />
            <line x2="120" y1="-96" y2="-96" x1="184" />
            <line x2="88" y1="-80" y2="-80" x1="128" />
            <line x2="92" y1="-16" y2="-16" x1="132" />
            <line x2="304" y1="-48" y2="-48" x1="284" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="or32">
            <timestamp>2016-3-29T12:31:45</timestamp>
            <line x2="64" y1="-16" y2="-16" x1="128" />
            <arc ex="208" ey="-64" sx="128" sy="-16" r="88" cx="132" cy="-104" />
            <arc ex="128" ey="-112" sx="208" sy="-64" r="88" cx="132" cy="-24" />
            <line x2="236" y1="-64" y2="-64" style="linewidth:W" x1="208" />
            <line x2="64" y1="-112" y2="-112" x1="128" />
            <line x2="48" y1="-96" y2="-96" style="linewidth:W" x1="80" />
            <arc ex="64" ey="-112" sx="64" sy="-16" r="56" cx="32" cy="-64" />
            <line x2="48" y1="-32" y2="-32" style="linewidth:W" x1="80" />
        </blockdef>
        <blockdef name="SignalExt_32">
            <timestamp>2016-4-21T6:30:40</timestamp>
            <line x2="12" y1="-32" y2="-32" x1="0" />
            <line x2="144" y1="-32" y2="-32" style="linewidth:W" x1="132" />
            <rect width="120" x="12" y="-52" height="40" />
        </blockdef>
        <block symbolname="and32" name="XLXI_1">
            <blockpin signalname="XLXN_1(31:0)" name="res(31:0)" />
            <blockpin signalname="A(31:0)" name="A(31:0)" />
            <blockpin signalname="B(31:0)" name="B(31:0)" />
        </block>
        <block symbolname="ADC32" name="XLXI_3">
            <blockpin signalname="XLXN_41(31:0)" name="B(31:0)" />
            <blockpin signalname="A(31:0)" name="A(31:0)" />
            <blockpin signalname="ALU_operation(2)" name="C0" />
            <blockpin signalname="S(32:0)" name="S(32:0)" />
        </block>
        <block symbolname="xor32" name="XLXI_4">
            <blockpin signalname="A(31:0)" name="A(31:0)" />
            <blockpin signalname="B(31:0)" name="B(31:0)" />
            <blockpin signalname="XLXN_9(31:0)" name="res(31:0)" />
        </block>
        <block symbolname="nor32" name="XLXI_5">
            <blockpin signalname="XLXN_10(31:0)" name="res(31:0)" />
            <blockpin signalname="A(31:0)" name="A(31:0)" />
            <blockpin signalname="B(31:0)" name="B(31:0)" />
        </block>
        <block symbolname="srl32" name="XLXI_6">
            <blockpin signalname="A(31:0)" name="A(31:0)" />
            <blockpin signalname="B(31:0)" name="B(31:0)" />
            <blockpin signalname="XLXN_11(31:0)" name="res(31:0)" />
        </block>
        <block symbolname="MUX8T1_32" name="XLXI_7">
            <blockpin signalname="ALU_operation(2:0)" name="s(2:0)" />
            <blockpin signalname="N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,S(32)" name="I7(31:0)" />
            <blockpin signalname="S(31:0)" name="I6(31:0)" />
            <blockpin signalname="XLXN_11(31:0)" name="I5(31:0)" />
            <blockpin signalname="XLXN_10(31:0)" name="I4(31:0)" />
            <blockpin signalname="XLXN_9(31:0)" name="I3(31:0)" />
            <blockpin signalname="S(31:0)" name="I2(31:0)" />
            <blockpin signalname="XLXN_2(31:0)" name="I1(31:0)" />
            <blockpin signalname="XLXN_1(31:0)" name="I0(31:0)" />
            <blockpin signalname="res(31:0)" name="o(31:0)" />
        </block>
        <block symbolname="or_bit_32" name="XLXI_8">
            <blockpin signalname="zero" name="o" />
            <blockpin signalname="res(31:0)" name="A(31:0)" />
        </block>
        <block symbolname="gnd" name="XLXI_9">
            <blockpin signalname="N0" name="G" />
        </block>
        <block symbolname="or32" name="XLXI_11">
            <blockpin signalname="XLXN_2(31:0)" name="res(31:0)" />
            <blockpin signalname="A(31:0)" name="A(31:0)" />
            <blockpin signalname="B(31:0)" name="B(31:0)" />
        </block>
        <block symbolname="SignalExt_32" name="XLXI_12">
            <blockpin signalname="XLXN_39(31:0)" name="So(31:0)" />
            <blockpin signalname="ALU_operation(2)" name="S" />
        </block>
        <block symbolname="xor32" name="XLXI_13">
            <blockpin signalname="XLXN_39(31:0)" name="A(31:0)" />
            <blockpin signalname="B(31:0)" name="B(31:0)" />
            <blockpin signalname="XLXN_41(31:0)" name="res(31:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7040" height="5440">
        <instance x="2480" y="576" name="XLXI_1" orien="R0">
        </instance>
        <instance x="2464" y="1280" name="XLXI_3" orien="R0">
        </instance>
        <instance x="2448" y="1504" name="XLXI_4" orien="R0">
        </instance>
        <instance x="2432" y="1696" name="XLXI_5" orien="R0">
        </instance>
        <instance x="2432" y="1920" name="XLXI_6" orien="R0">
        </instance>
        <instance x="3808" y="1360" name="XLXI_8" orien="R0">
        </instance>
        <branch name="XLXN_1(31:0)">
            <wire x2="3152" y1="512" y2="512" x1="2704" />
            <wire x2="3152" y1="512" y2="896" x1="3152" />
            <wire x2="3472" y1="896" y2="896" x1="3152" />
        </branch>
        <branch name="S(32:0)">
            <wire x2="2784" y1="1088" y2="1088" x1="2704" />
        </branch>
        <bustap x2="2880" y1="1088" y2="1088" x1="2784" />
        <branch name="S(31:0)">
            <wire x2="2944" y1="1088" y2="1088" x1="2880" />
            <wire x2="3472" y1="1088" y2="1088" x1="2944" />
            <wire x2="3472" y1="960" y2="960" x1="2944" />
            <wire x2="2944" y1="960" y2="1088" x1="2944" />
        </branch>
        <instance x="3472" y="1136" name="XLXI_7" orien="R0">
        </instance>
        <branch name="XLXN_2(31:0)">
            <wire x2="3088" y1="720" y2="720" x1="2704" />
            <wire x2="3088" y1="720" y2="928" x1="3088" />
            <wire x2="3472" y1="928" y2="928" x1="3088" />
        </branch>
        <branch name="XLXN_9(31:0)">
            <wire x2="3040" y1="1440" y2="1440" x1="2704" />
            <wire x2="3040" y1="992" y2="1440" x1="3040" />
            <wire x2="3472" y1="992" y2="992" x1="3040" />
        </branch>
        <branch name="XLXN_10(31:0)">
            <wire x2="3088" y1="1632" y2="1632" x1="2688" />
            <wire x2="3472" y1="1024" y2="1024" x1="3088" />
            <wire x2="3088" y1="1024" y2="1632" x1="3088" />
        </branch>
        <branch name="XLXN_11(31:0)">
            <wire x2="3168" y1="1856" y2="1856" x1="2720" />
            <wire x2="3168" y1="1056" y2="1856" x1="3168" />
            <wire x2="3472" y1="1056" y2="1056" x1="3168" />
        </branch>
        <branch name="A(31:0)">
            <wire x2="2384" y1="512" y2="512" x1="2128" />
            <wire x2="2384" y1="512" y2="688" x1="2384" />
            <wire x2="2512" y1="688" y2="688" x1="2384" />
            <wire x2="2384" y1="688" y2="1024" x1="2384" />
            <wire x2="2512" y1="1024" y2="1024" x1="2384" />
            <wire x2="2384" y1="1024" y2="1408" x1="2384" />
            <wire x2="2480" y1="1408" y2="1408" x1="2384" />
            <wire x2="2384" y1="1408" y2="1600" x1="2384" />
            <wire x2="2480" y1="1600" y2="1600" x1="2384" />
            <wire x2="2384" y1="1600" y2="1824" x1="2384" />
            <wire x2="2464" y1="1824" y2="1824" x1="2384" />
            <wire x2="2512" y1="480" y2="480" x1="2384" />
            <wire x2="2384" y1="480" y2="512" x1="2384" />
        </branch>
        <iomarker fontsize="28" x="2128" y="512" name="A(31:0)" orien="R180" />
        <bustap x2="2208" y1="304" y2="400" x1="2208" />
        <branch name="ALU_operation(2:0)">
            <wire x2="2208" y1="272" y2="272" x1="2016" />
            <wire x2="2208" y1="272" y2="304" x1="2208" />
            <wire x2="3520" y1="272" y2="272" x1="2208" />
            <wire x2="3520" y1="272" y2="864" x1="3520" />
        </branch>
        <iomarker fontsize="28" x="2016" y="272" name="ALU_operation(2:0)" orien="R180" />
        <branch name="res(31:0)">
            <wire x2="3696" y1="976" y2="976" x1="3568" />
            <wire x2="3856" y1="976" y2="976" x1="3696" />
            <wire x2="3696" y1="976" y2="1312" x1="3696" />
            <wire x2="3840" y1="1312" y2="1312" x1="3696" />
        </branch>
        <iomarker fontsize="28" x="3856" y="976" name="res(31:0)" orien="R0" />
        <branch name="zero">
            <wire x2="4176" y1="1312" y2="1312" x1="4112" />
        </branch>
        <iomarker fontsize="28" x="4176" y="1312" name="zero" orien="R0" />
        <branch name="N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,S(32)">
            <wire x2="3472" y1="1120" y2="1120" x1="3312" />
            <wire x2="3312" y1="1120" y2="1264" x1="3312" />
            <wire x2="3328" y1="1264" y2="1264" x1="3312" />
        </branch>
        <bustap x2="3424" y1="1264" y2="1264" x1="3328" />
        <branch name="N0">
            <wire x2="3504" y1="1264" y2="1264" x1="3424" />
            <wire x2="3504" y1="1264" y2="1344" x1="3504" />
        </branch>
        <instance x="3440" y="1472" name="XLXI_9" orien="R0" />
        <branch name="overflow">
            <wire x2="4048" y1="1520" y2="1520" x1="3872" />
        </branch>
        <iomarker fontsize="28" x="4048" y="1520" name="overflow" orien="R0" />
        <instance x="2464" y="784" name="XLXI_11" orien="R0">
        </instance>
        <branch name="ALU_operation(2)">
            <wire x2="2208" y1="912" y2="912" x1="1856" />
            <wire x2="2592" y1="912" y2="912" x1="2208" />
            <wire x2="2592" y1="912" y2="976" x1="2592" />
            <wire x2="2208" y1="400" y2="912" x1="2208" />
        </branch>
        <branch name="B(31:0)">
            <wire x2="2112" y1="1888" y2="1888" x1="1600" />
            <wire x2="2464" y1="1888" y2="1888" x1="2112" />
            <wire x2="1632" y1="1184" y2="1664" x1="1632" />
            <wire x2="2112" y1="1664" y2="1664" x1="1632" />
            <wire x2="2480" y1="1664" y2="1664" x1="2112" />
            <wire x2="2112" y1="1664" y2="1888" x1="2112" />
            <wire x2="1760" y1="1184" y2="1184" x1="1632" />
            <wire x2="2112" y1="544" y2="752" x1="2112" />
            <wire x2="2512" y1="752" y2="752" x1="2112" />
            <wire x2="2112" y1="752" y2="1472" x1="2112" />
            <wire x2="2480" y1="1472" y2="1472" x1="2112" />
            <wire x2="2112" y1="1472" y2="1664" x1="2112" />
            <wire x2="2512" y1="544" y2="544" x1="2112" />
        </branch>
        <iomarker fontsize="28" x="1600" y="1888" name="B(31:0)" orien="R180" />
        <instance x="1856" y="880" name="XLXI_12" orien="R180">
        </instance>
        <instance x="1728" y="1216" name="XLXI_13" orien="R0">
        </instance>
        <branch name="XLXN_39(31:0)">
            <wire x2="1712" y1="912" y2="912" x1="1632" />
            <wire x2="1632" y1="912" y2="1120" x1="1632" />
            <wire x2="1760" y1="1120" y2="1120" x1="1632" />
        </branch>
        <branch name="XLXN_41(31:0)">
            <wire x2="2512" y1="1152" y2="1152" x1="1984" />
        </branch>
    </sheet>
</drawing>