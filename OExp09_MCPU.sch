<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="V5" />
        <signal name="N0" />
        <signal name="RSTN" />
        <signal name="BTN_y(3:0)" />
        <signal name="BTN_x(4:0)" />
        <signal name="SW(15:0)" />
        <signal name="CR" />
        <signal name="XLXN_13(4:0)" />
        <signal name="RDY" />
        <signal name="BTN_OK(3:0)" />
        <signal name="BTN_OK(2:0)" />
        <signal name="SW_OK(15:0)" />
        <signal name="SW_OK(7:5),SW_OK(15),SW_OK(0)" />
        <signal name="Div(31:0)" />
        <signal name="Clk_CPU" />
        <signal name="SW_OK(2)" />
        <signal name="Ai(31:0)" />
        <signal name="Div(31:0),Div(31:0)" />
        <signal name="blink(7:0)" />
        <signal name="readn" />
        <signal name="Pulse(3:0)" />
        <signal name="Div(20)" />
        <signal name="SW_OK(0)" />
        <signal name="Div(25)" />
        <signal name="rst" />
        <signal name="counter_set(1:0)" />
        <signal name="LED(7:0)" />
        <signal name="GPIOf0_PIO(21:0)" />
        <signal name="Buzzer" />
        <signal name="clk_100mhz" />
        <signal name="GPIOe0000000_we" />
        <signal name="GPIOF0" />
        <signal name="SW_OK(7:5)" />
        <signal name="N0,N0,PC(31:2)" />
        <signal name="XLXN_325" />
        <signal name="Addr_out(31:0)" />
        <signal name="Data_in(31:0)" />
        <signal name="Data_out(31:0)" />
        <signal name="IO_clk" />
        <signal name="inst(31:0)" />
        <signal name="ram_addr(9:0)" />
        <signal name="data_ram_we(0:0)" />
        <signal name="ram_data_in(31:0)" />
        <signal name="SEGMENT(7:0)" />
        <signal name="AN(3:0)" />
        <signal name="SW_OK(1),Div(19:18)" />
        <signal name="Disp_num(31:0)" />
        <signal name="LE_out(7:0)" />
        <signal name="point_out(7:0)" />
        <signal name="XLXN_400" />
        <signal name="XLXN_401" />
        <signal name="Div(8)" />
        <signal name="Div(9)" />
        <signal name="Div(11)" />
        <signal name="CPU2IO(31:0)" />
        <signal name="XLXN_73(13:0)" />
        <signal name="led_clrn" />
        <signal name="LED_PEN" />
        <signal name="led_sout" />
        <signal name="led_clk" />
        <signal name="Bi(31:0)" />
        <signal name="XLXN_428" />
        <signal name="XLXN_429" />
        <signal name="Counter_out(31:0)" />
        <signal name="XLXN_432(1:0)" />
        <signal name="LED_out(15:0)" />
        <signal name="N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0" />
        <signal name="seg_clk" />
        <signal name="seg_sout" />
        <signal name="SEG_PEN" />
        <signal name="seg_clrn" />
        <signal name="State(4:0)" />
        <signal name="PC(31:0)" />
        <signal name="ram_data_out(31:0)" />
        <port polarity="Input" name="RSTN" />
        <port polarity="Input" name="BTN_y(3:0)" />
        <port polarity="Output" name="BTN_x(4:0)" />
        <port polarity="Input" name="SW(15:0)" />
        <port polarity="Output" name="CR" />
        <port polarity="Output" name="RDY" />
        <port polarity="Output" name="readn" />
        <port polarity="Output" name="LED(7:0)" />
        <port polarity="Output" name="Buzzer" />
        <port polarity="Input" name="clk_100mhz" />
        <port polarity="Output" name="SEGMENT(7:0)" />
        <port polarity="Output" name="AN(3:0)" />
        <port polarity="Output" name="led_clrn" />
        <port polarity="Output" name="LED_PEN" />
        <port polarity="Output" name="led_sout" />
        <port polarity="Output" name="led_clk" />
        <port polarity="Output" name="seg_clk" />
        <port polarity="Output" name="seg_sout" />
        <port polarity="Output" name="SEG_PEN" />
        <port polarity="Output" name="seg_clrn" />
        <blockdef name="SAnti_jitter">
            <timestamp>2016-2-25T4:28:0</timestamp>
            <rect style="linewidth:W;linecolor:rgb(0,0,255);fillcolor:rgb(170,255,255);fillstyle:Solid" width="300" x="64" y="-248" height="256" />
            <line x2="32" y1="-64" y2="-64" style="linewidth:W" x1="64" />
            <line x2="32" y1="-32" y2="-32" x1="64" />
            <line x2="32" y1="-160" y2="-160" style="linewidth:W" x1="64" />
            <line x2="32" y1="-112" y2="-112" style="linewidth:W" x1="64" />
            <line x2="32" y1="-224" y2="-224" x1="64" />
            <line x2="32" y1="-192" y2="-192" x1="64" />
            <line x2="400" y1="-192" y2="-192" style="linewidth:W" x1="368" />
            <line x2="364" y1="-160" y2="-160" x1="400" />
            <line x2="364" y1="-224" y2="-224" x1="400" />
            <line x2="364" y1="-16" y2="-16" x1="400" />
            <line x2="400" y1="-48" y2="-48" style="linewidth:W" x1="368" />
            <line x2="400" y1="-128" y2="-128" style="linewidth:W" x1="368" />
            <line x2="400" y1="-96" y2="-96" style="linewidth:W" x1="368" />
        </blockdef>
        <blockdef name="clk_div">
            <timestamp>2016-2-25T4:28:0</timestamp>
            <rect style="linewidth:W;linecolor:rgb(0,0,255);fillcolor:rgb(142,240,255);fillstyle:Solid" width="256" x="32" y="-140" height="140" />
            <line x2="0" y1="-80" y2="-80" x1="32" />
            <line x2="0" y1="-112" y2="-112" x1="32" />
            <line x2="0" y1="-32" y2="-32" x1="32" />
            <line x2="320" y1="-112" y2="-112" style="linewidth:W" x1="288" />
            <line x2="320" y1="-32" y2="-32" x1="288" />
        </blockdef>
        <blockdef name="SEnter_2_32">
            <timestamp>2016-2-25T4:28:0</timestamp>
            <line x2="288" y1="-240" y2="-240" x1="320" />
            <line x2="320" y1="-192" y2="-192" style="linewidth:W" x1="288" />
            <line x2="320" y1="-128" y2="-128" style="linewidth:W" x1="288" />
            <line x2="320" y1="-64" y2="-64" style="linewidth:W" x1="288" />
            <rect style="linewidth:W;linecolor:rgb(0,0,255);fillcolor:rgb(170,255,255);fillstyle:Solid" width="256" x="32" y="-272" height="272" />
            <line x2="0" y1="-208" y2="-208" style="linewidth:W" x1="32" />
            <line x2="0" y1="-176" y2="-176" x1="32" />
            <line x2="0" y1="-240" y2="-240" x1="32" />
            <line x2="0" y1="-64" y2="-64" style="linewidth:W" x1="32" />
            <line x2="0" y1="-112" y2="-112" style="linewidth:W" x1="32" />
        </blockdef>
        <blockdef name="SSeg7_Dev">
            <timestamp>2016-2-25T4:28:0</timestamp>
            <line x2="0" y1="-48" y2="-48" style="linewidth:W" x1="32" />
            <line x2="368" y1="-160" y2="-160" x1="384" />
            <line x2="368" y1="-224" y2="-224" x1="384" />
            <line x2="368" y1="-96" y2="-96" x1="384" />
            <line x2="0" y1="-80" y2="-80" style="linewidth:W" x1="32" />
            <line x2="0" y1="-112" y2="-112" style="linewidth:W" x1="32" />
            <rect style="linecolor:rgb(0,0,0);fillcolor:rgb(174,185,255);fillstyle:Solid" width="336" x="32" y="-372" height="360" />
            <line x2="0" y1="-224" y2="-224" x1="32" />
            <line x2="0" y1="-160" y2="-160" x1="32" />
            <line x2="368" y1="-288" y2="-288" x1="384" />
            <line x2="0" y1="-336" y2="-336" x1="32" />
            <line x2="0" y1="-304" y2="-304" x1="32" />
            <line x2="0" y1="-272" y2="-272" x1="32" />
        </blockdef>
        <blockdef name="RAM_B">
            <timestamp>2016-2-25T4:28:0</timestamp>
            <rect style="fillcolor:rgb(255,170,255);fillstyle:Solid" width="380" x="32" y="32" height="316" />
            <line x2="32" y1="80" y2="80" style="linewidth:W" x1="0" />
            <line x2="32" y1="272" y2="272" x1="0" />
            <line x2="32" y1="144" y2="144" style="linewidth:W" x1="0" />
            <line x2="32" y1="224" y2="224" style="linewidth:W" x1="0" />
            <line x2="416" y1="144" y2="144" style="linewidth:W" x1="448" />
        </blockdef>
        <blockdef name="Multi_8CH32">
            <timestamp>2016-2-25T4:28:0</timestamp>
            <line x2="0" y1="-528" y2="-528" style="linewidth:W" x1="32" />
            <line x2="0" y1="-464" y2="-464" style="linewidth:W" x1="32" />
            <line x2="0" y1="-672" y2="-672" x1="32" />
            <line x2="0" y1="-624" y2="-624" x1="32" />
            <line x2="0" y1="-576" y2="-576" x1="32" />
            <line x2="0" y1="-416" y2="-416" style="linewidth:W" x1="32" />
            <line x2="0" y1="-368" y2="-368" style="linewidth:W" x1="32" />
            <line x2="0" y1="-320" y2="-320" style="linewidth:W" x1="32" />
            <line x2="0" y1="-272" y2="-272" style="linewidth:W" x1="32" />
            <line x2="0" y1="-224" y2="-224" style="linewidth:W" x1="32" />
            <line x2="0" y1="-176" y2="-176" style="linewidth:W" x1="32" />
            <line x2="0" y1="-128" y2="-128" style="linewidth:W" x1="32" />
            <line x2="0" y1="-80" y2="-80" style="linewidth:W" x1="32" />
            <line x2="0" y1="-32" y2="-32" style="linewidth:W" x1="32" />
            <line x2="352" y1="-576" y2="-576" style="linewidth:W" x1="384" />
            <line x2="352" y1="-528" y2="-528" style="linewidth:W" x1="384" />
            <line x2="352" y1="-624" y2="-624" style="linewidth:W" x1="384" />
            <rect style="fillcolor:rgb(179,164,255);fillstyle:Solid" width="320" x="32" y="-696" height="696" />
        </blockdef>
        <blockdef name="SPIO">
            <timestamp>2016-2-25T4:28:0</timestamp>
            <line x2="32" y1="-224" y2="-224" x1="64" />
            <line x2="32" y1="-32" y2="-32" style="linewidth:W" x1="64" />
            <line x2="464" y1="-224" y2="-224" style="linewidth:W" x1="448" />
            <line x2="32" y1="-176" y2="-176" x1="64" />
            <line x2="32" y1="-128" y2="-128" x1="64" />
            <line x2="32" y1="-80" y2="-80" x1="64" />
            <line x2="464" y1="-192" y2="-192" style="linewidth:W" x1="448" />
            <line x2="464" y1="-160" y2="-160" style="linewidth:W" x1="448" />
            <line x2="448" y1="-128" y2="-128" x1="464" />
            <line x2="464" y1="-96" y2="-96" x1="448" />
            <line x2="448" y1="-32" y2="-32" x1="464" />
            <line x2="464" y1="-64" y2="-64" x1="448" />
            <rect style="fillcolor:rgb(149,160,255);fillstyle:Solid" width="384" x="64" y="-260" height="256" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
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
        <blockdef name="Seg7_Dev">
            <timestamp>2016-2-25T4:28:0</timestamp>
            <rect style="linewidth:W;linecolor:rgb(0,0,255);fillcolor:rgb(192,173,254);fillstyle:Solid" width="288" x="32" y="-240" height="240" />
            <line x2="0" y1="-32" y2="-32" style="linewidth:W" x1="32" />
            <line x2="0" y1="-208" y2="-208" style="linewidth:W" x1="32" />
            <line x2="352" y1="-192" y2="-192" style="linewidth:W" x1="320" />
            <line x2="352" y1="-64" y2="-64" style="linewidth:W" x1="320" />
            <line x2="0" y1="-64" y2="-64" style="linewidth:W" x1="32" />
            <line x2="32" y1="-144" y2="-144" x1="0" />
            <line x2="32" y1="-176" y2="-176" x1="0" />
            <line x2="0" y1="-96" y2="-96" style="linewidth:W" x1="32" />
        </blockdef>
        <blockdef name="PIO">
            <timestamp>2016-2-25T4:28:0</timestamp>
            <rect style="fillcolor:rgb(149,160,255);fillstyle:Solid" width="384" x="64" y="-256" height="256" />
            <line x2="32" y1="-224" y2="-224" x1="64" />
            <line x2="32" y1="-160" y2="-160" x1="64" />
            <line x2="32" y1="-96" y2="-96" x1="64" />
            <line x2="32" y1="-32" y2="-32" style="linewidth:W" x1="64" />
            <line x2="480" y1="-32" y2="-32" style="linewidth:W" x1="448" />
            <line x2="480" y1="-128" y2="-128" style="linewidth:W" x1="448" />
            <line x2="480" y1="-224" y2="-224" style="linewidth:W" x1="448" />
        </blockdef>
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <blockdef name="MIO_BUS">
            <timestamp>2016-3-13T14:20:46</timestamp>
            <rect style="fillcolor:rgb(255,255,127);fillstyle:Solid" width="432" x="64" y="-832" height="832" />
            <line x2="32" y1="-800" y2="-800" x1="64" />
            <line x2="32" y1="-736" y2="-736" x1="64" />
            <line x2="32" y1="-544" y2="-544" x1="64" />
            <line x2="32" y1="-480" y2="-480" style="linewidth:W" x1="64" />
            <line x2="32" y1="-416" y2="-416" style="linewidth:W" x1="64" />
            <line x2="32" y1="-352" y2="-352" style="linewidth:W" x1="64" />
            <line x2="32" y1="-64" y2="-64" style="linewidth:W" x1="64" />
            <line x2="32" y1="-112" y2="-112" style="linewidth:W" x1="64" />
            <line x2="32" y1="-160" y2="-160" x1="64" />
            <line x2="32" y1="-208" y2="-208" style="linewidth:W" x1="64" />
            <line x2="528" y1="-192" y2="-192" style="linewidth:W" x1="496" />
            <line x2="496" y1="-160" y2="-160" x1="528" />
            <line x2="496" y1="-128" y2="-128" x1="528" />
            <line x2="496" y1="-96" y2="-96" x1="528" />
            <line x2="528" y1="-64" y2="-64" x1="496" />
            <line x2="32" y1="-672" y2="-672" style="linewidth:W" x1="64" />
            <line x2="32" y1="-624" y2="-624" style="linewidth:W" x1="64" />
            <line x2="528" y1="-368" y2="-368" style="linewidth:W" x1="496" />
            <line x2="528" y1="-768" y2="-768" style="linewidth:W" x1="496" />
            <line x2="528" y1="-720" y2="-720" x1="496" />
            <line x2="528" y1="-672" y2="-672" x1="496" />
        </blockdef>
        <blockdef name="Counter_x">
            <timestamp>2016-3-13T14:20:36</timestamp>
            <rect style="fillcolor:rgb(180,180,180);fillstyle:Solid" width="384" x="64" y="-512" height="512" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="512" y1="-480" y2="-480" x1="448" />
            <line x2="512" y1="-336" y2="-336" x1="448" />
            <line x2="512" y1="-192" y2="-192" x1="448" />
            <rect width="64" x="448" y="-60" height="24" />
            <line x2="512" y1="-48" y2="-48" x1="448" />
        </blockdef>
        <blockdef name="Multi_CPU">
            <timestamp>2017-5-25T5:4:13</timestamp>
            <rect width="320" x="64" y="-448" height="448" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-320" y2="-320" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-128" y2="-128" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="448" y1="-416" y2="-416" x1="384" />
            <line x2="448" y1="-352" y2="-352" x1="384" />
            <rect width="64" x="384" y="-300" height="24" />
            <line x2="448" y1="-288" y2="-288" x1="384" />
            <rect width="64" x="384" y="-236" height="24" />
            <line x2="448" y1="-224" y2="-224" x1="384" />
            <rect width="64" x="384" y="-172" height="24" />
            <line x2="448" y1="-160" y2="-160" x1="384" />
            <rect width="64" x="384" y="-108" height="24" />
            <line x2="448" y1="-96" y2="-96" x1="384" />
            <rect width="64" x="384" y="-44" height="24" />
            <line x2="448" y1="-32" y2="-32" x1="384" />
        </blockdef>
        <block symbolname="vcc" name="XLXI_11">
            <blockpin signalname="V5" name="P" />
        </block>
        <block symbolname="gnd" name="XLXI_12">
            <blockpin signalname="N0" name="G" />
        </block>
        <block symbolname="clk_div" name="U8">
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="clk_100mhz" name="clk" />
            <blockpin signalname="SW_OK(2)" name="SW2" />
            <blockpin signalname="Div(31:0)" name="clkdiv(31:0)" />
            <blockpin signalname="Clk_CPU" name="Clk_CPU" />
        </block>
        <block symbolname="RAM_B" name="U3">
            <blockpin signalname="ram_addr(9:0)" name="addra(9:0)" />
            <blockpin signalname="clk_100mhz" name="clka" />
            <blockpin signalname="data_ram_we(0:0)" name="wea(0:0)" />
            <blockpin signalname="ram_data_in(31:0)" name="dina(31:0)" />
            <blockpin signalname="ram_data_out(31:0)" name="douta(31:0)" />
        </block>
        <block symbolname="SAnti_jitter" name="U9">
            <blockpin signalname="SW(15:0)" name="SW(15:0)" />
            <blockpin signalname="readn" name="readn" />
            <blockpin signalname="BTN_y(3:0)" name="Key_y(3:0)" />
            <blockpin signalname="BTN_x(4:0)" name="Key_x(4:0)" />
            <blockpin signalname="RSTN" name="RSTN" />
            <blockpin signalname="clk_100mhz" name="clk" />
            <blockpin signalname="XLXN_13(4:0)" name="Key_out(4:0)" />
            <blockpin signalname="RDY" name="Key_ready" />
            <blockpin signalname="CR" name="CR" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="SW_OK(15:0)" name="SW_OK(15:0)" />
            <blockpin signalname="Pulse(3:0)" name="pulse_out(3:0)" />
            <blockpin signalname="BTN_OK(3:0)" name="BTN_OK(3:0)" />
        </block>
        <block symbolname="SEnter_2_32" name="M4">
            <blockpin signalname="readn" name="readn" />
            <blockpin signalname="Ai(31:0)" name="Ai(31:0)" />
            <blockpin signalname="Bi(31:0)" name="Bi(31:0)" />
            <blockpin signalname="blink(7:0)" name="blink(7:0)" />
            <blockpin signalname="XLXN_13(4:0)" name="Din(4:0)" />
            <blockpin signalname="RDY" name="D_ready" />
            <blockpin signalname="clk_100mhz" name="clk" />
            <blockpin signalname="SW_OK(7:5),SW_OK(15),SW_OK(0)" name="Ctrl(4:0)" />
            <blockpin signalname="BTN_OK(2:0)" name="BTN(2:0)" />
        </block>
        <block symbolname="Multi_8CH32" name="U5">
            <blockpin signalname="SW_OK(7:5)" name="Test(2:0)" />
            <blockpin signalname="Div(31:0),Div(31:0)" name="point_in(63:0)" />
            <blockpin signalname="GPIOe0000000_we" name="EN" />
            <blockpin signalname="IO_clk" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0" name="LES(63:0)" />
            <blockpin signalname="CPU2IO(31:0)" name="Data0(31:0)" />
            <blockpin signalname="N0,N0,PC(31:2)" name="data1(31:0)" />
            <blockpin signalname="inst(31:0)" name="data2(31:0)" />
            <blockpin signalname="Counter_out(31:0)" name="data3(31:0)" />
            <blockpin signalname="Addr_out(31:0)" name="data4(31:0)" />
            <blockpin signalname="Data_out(31:0)" name="data5(31:0)" />
            <blockpin signalname="Data_in(31:0)" name="data6(31:0)" />
            <blockpin signalname="PC(31:0)" name="data7(31:0)" />
            <blockpin signalname="point_out(7:0)" name="point_out(7:0)" />
            <blockpin signalname="LE_out(7:0)" name="LE_out(7:0)" />
            <blockpin signalname="Disp_num(31:0)" name="Disp_num(31:0)" />
        </block>
        <block symbolname="PIO" name="U71">
            <blockpin signalname="IO_clk" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="GPIOF0" name="EN" />
            <blockpin signalname="CPU2IO(31:0)" name="PData_in(31:0)" />
            <blockpin signalname="GPIOf0_PIO(21:0)" name="GPIOf0(21:0)" />
            <blockpin signalname="LED(7:0)" name="LED_out(7:0)" />
            <blockpin signalname="counter_set(1:0)" name="counter_set(1:0)" />
        </block>
        <block symbolname="buf" name="XLXI_35">
            <blockpin signalname="V5" name="I" />
            <blockpin signalname="Buzzer" name="O" />
        </block>
        <block symbolname="MIO_BUS" name="U4">
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="clk_100mhz" name="clk" />
            <blockpin signalname="XLXN_325" name="mem_w" />
            <blockpin signalname="Addr_out(31:0)" name="addr_bus(31:0)" />
            <blockpin signalname="Data_in(31:0)" name="Cpu_data4bus(31:0)" />
            <blockpin signalname="Data_out(31:0)" name="Cpu_data2bus(31:0)" />
            <blockpin signalname="ram_data_out(31:0)" name="ram_data_out(31:0)" />
            <blockpin signalname="ram_addr(9:0)" name="ram_addr(9:0)" />
            <blockpin signalname="data_ram_we(0:0)" name="data_ram_we" />
            <blockpin signalname="ram_data_in(31:0)" name="ram_data_in(31:0)" />
            <blockpin signalname="Counter_out(31:0)" name="counter_out(31:0)" />
            <blockpin signalname="XLXN_429" name="counter2_out" />
            <blockpin signalname="XLXN_428" name="counter1_out" />
            <blockpin signalname="XLXN_400" name="counter0_out" />
            <blockpin signalname="XLXN_401" name="counter_we" />
            <blockpin signalname="BTN_OK(3:0)" name="BTN(3:0)" />
            <blockpin signalname="SW_OK(15:0)" name="SW(15:0)" />
            <blockpin signalname="LED_out(15:0)" name="led_out(15:0)" />
            <blockpin signalname="CPU2IO(31:0)" name="Peripheral_in(31:0)" />
            <blockpin signalname="GPIOe0000000_we" name="GPIOe0000000_we" />
            <blockpin signalname="GPIOF0" name="GPIOf0000000_we" />
        </block>
        <block symbolname="inv" name="XLXI_40">
            <blockpin signalname="Clk_CPU" name="I" />
            <blockpin signalname="IO_clk" name="O" />
        </block>
        <block symbolname="Counter_x" name="U10">
            <blockpin signalname="IO_clk" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="Div(8)" name="clk0" />
            <blockpin signalname="Div(9)" name="clk1" />
            <blockpin signalname="Div(11)" name="clk2" />
            <blockpin signalname="XLXN_401" name="counter_we" />
            <blockpin signalname="CPU2IO(31:0)" name="counter_val(31:0)" />
            <blockpin signalname="XLXN_432(1:0)" name="counter_ch(1:0)" />
            <blockpin signalname="XLXN_400" name="counter0_OUT" />
            <blockpin signalname="XLXN_428" name="counter1_OUT" />
            <blockpin signalname="XLXN_429" name="counter2_OUT" />
            <blockpin signalname="Counter_out(31:0)" name="counter_out(31:0)" />
        </block>
        <block symbolname="Seg7_Dev" name="U61">
            <blockpin signalname="LE_out(7:0)" name="LES(7:0)" />
            <blockpin signalname="SW_OK(1),Div(19:18)" name="Scan(2:0)" />
            <blockpin signalname="SEGMENT(7:0)" name="SEGMENT(7:0)" />
            <blockpin signalname="AN(3:0)" name="AN(3:0)" />
            <blockpin signalname="point_out(7:0)" name="point(7:0)" />
            <blockpin signalname="Div(25)" name="flash" />
            <blockpin signalname="SW_OK(0)" name="SW0" />
            <blockpin signalname="Disp_num(31:0)" name="Hexs(31:0)" />
        </block>
        <block symbolname="SPIO" name="U7">
            <blockpin signalname="IO_clk" name="clk" />
            <blockpin signalname="CPU2IO(31:0)" name="P_Data(31:0)" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="GPIOF0" name="EN" />
            <blockpin signalname="Div(20)" name="Start" />
            <blockpin signalname="led_clk" name="led_clk" />
            <blockpin signalname="XLXN_73(13:0)" name="GPIOf0(13:0)" />
            <blockpin signalname="LED_out(15:0)" name="LED_out(15:0)" />
            <blockpin signalname="XLXN_432(1:0)" name="counter_set(1:0)" />
            <blockpin signalname="led_clrn" name="led_clrn" />
            <blockpin signalname="LED_PEN" name="LED_PEN" />
            <blockpin signalname="led_sout" name="led_sout" />
        </block>
        <block symbolname="SSeg7_Dev" name="U6">
            <blockpin signalname="LE_out(7:0)" name="LES(7:0)" />
            <blockpin signalname="SEG_PEN" name="SEG_PEN" />
            <blockpin signalname="seg_sout" name="seg_sout" />
            <blockpin signalname="seg_clrn" name="seg_clrn" />
            <blockpin signalname="point_out(7:0)" name="point(7:0)" />
            <blockpin signalname="Disp_num(31:0)" name="Hexs(31:0)" />
            <blockpin signalname="SW_OK(0)" name="SW0" />
            <blockpin signalname="Div(25)" name="flash" />
            <blockpin signalname="seg_clk" name="seg_clk" />
            <blockpin signalname="clk_100mhz" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="Div(20)" name="Start" />
        </block>
        <block symbolname="Multi_CPU" name="XLXI_45">
            <blockpin signalname="Clk_CPU" name="clk" />
            <blockpin signalname="rst" name="reset" />
            <blockpin signalname="V5" name="MIO_ready" />
            <blockpin signalname="XLXN_400" name="INT" />
            <blockpin signalname="Data_in(31:0)" name="Data_in(31:0)" />
            <blockpin signalname="XLXN_325" name="mem_w" />
            <blockpin name="CPU_MIO" />
            <blockpin signalname="PC(31:0)" name="PC_out(31:0)" />
            <blockpin signalname="inst(31:0)" name="inst_out(31:0)" />
            <blockpin signalname="Addr_out(31:0)" name="Addr_out(31:0)" />
            <blockpin signalname="Data_out(31:0)" name="Data_out(31:0)" />
            <blockpin signalname="State(4:0)" name="state(4:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="3344" y="960" name="XLXI_11" orien="R0" />
        <instance x="3344" y="1296" name="XLXI_12" orien="R0" />
        <branch name="V5">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3370" y="1008" type="branch" />
            <wire x2="3408" y1="1008" y2="1008" x1="3360" />
            <wire x2="3408" y1="960" y2="1008" x1="3408" />
        </branch>
        <branch name="N0">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3372" y="1120" type="branch" />
            <wire x2="3408" y1="1120" y2="1120" x1="3360" />
            <wire x2="3408" y1="1120" y2="1168" x1="3408" />
        </branch>
        <instance x="704" y="704" name="U8" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="96" y="-80" type="instance" />
        </instance>
        <branch name="RSTN">
            <wire x2="672" y1="240" y2="240" x1="192" />
        </branch>
        <branch name="BTN_y(3:0)">
            <wire x2="672" y1="304" y2="304" x1="240" />
        </branch>
        <branch name="BTN_x(4:0)">
            <wire x2="672" y1="352" y2="352" x1="240" />
        </branch>
        <branch name="SW(15:0)">
            <wire x2="672" y1="400" y2="400" x1="208" />
        </branch>
        <instance x="640" y="464" name="U9" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="192" y="-192" type="instance" />
        </instance>
        <branch name="CR">
            <wire x2="1088" y1="240" y2="240" x1="1040" />
        </branch>
        <branch name="XLXN_13(4:0)">
            <wire x2="1488" y1="272" y2="272" x1="1040" />
        </branch>
        <branch name="RDY">
            <wire x2="1344" y1="304" y2="304" x1="1040" />
            <wire x2="1488" y1="304" y2="304" x1="1344" />
            <wire x2="1344" y1="160" y2="304" x1="1344" />
            <wire x2="1456" y1="160" y2="160" x1="1344" />
        </branch>
        <branch name="BTN_OK(3:0)">
            <wire x2="1088" y1="368" y2="368" x1="1040" />
            <wire x2="1104" y1="368" y2="368" x1="1088" />
            <wire x2="1088" y1="368" y2="1008" x1="1088" />
            <wire x2="1520" y1="1008" y2="1008" x1="1088" />
        </branch>
        <bustap x2="1200" y1="368" y2="368" x1="1104" />
        <branch name="BTN_OK(2:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1406" y="368" type="branch" />
            <wire x2="1488" y1="368" y2="368" x1="1200" />
        </branch>
        <branch name="SW_OK(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1072" y="416" type="branch" />
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1318" y="752" type="branch" />
            <wire x2="1072" y1="416" y2="416" x1="1040" />
            <wire x2="1104" y1="416" y2="416" x1="1072" />
            <wire x2="1072" y1="416" y2="752" x1="1072" />
            <wire x2="1568" y1="752" y2="752" x1="1072" />
            <wire x2="1072" y1="752" y2="1056" x1="1072" />
            <wire x2="1520" y1="1056" y2="1056" x1="1072" />
        </branch>
        <bustap x2="1200" y1="416" y2="416" x1="1104" />
        <branch name="SW_OK(7:5),SW_OK(15),SW_OK(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1336" y="416" type="branch" />
            <wire x2="1488" y1="416" y2="416" x1="1200" />
        </branch>
        <branch name="Div(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1424" y="592" type="branch" />
            <wire x2="1392" y1="592" y2="592" x1="1024" />
            <wire x2="1424" y1="592" y2="592" x1="1392" />
            <wire x2="1392" y1="592" y2="1936" x1="1392" />
            <wire x2="1392" y1="1936" y2="2000" x1="1392" />
            <wire x2="1392" y1="2000" y2="2064" x1="1392" />
        </branch>
        <branch name="SW_OK(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="512" y="672" type="branch" />
            <wire x2="704" y1="672" y2="672" x1="512" />
        </branch>
        <branch name="Div(31:0),Div(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2752" y="1184" type="branch" />
            <wire x2="2800" y1="1184" y2="1184" x1="2752" />
        </branch>
        <branch name="blink(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2016" y="416" type="branch" />
            <wire x2="2016" y1="416" y2="416" x1="1808" />
        </branch>
        <branch name="readn">
            <wire x2="672" y1="432" y2="432" x1="656" />
            <wire x2="656" y1="432" y2="528" x1="656" />
            <wire x2="1904" y1="528" y2="528" x1="656" />
            <wire x2="1904" y1="240" y2="240" x1="1808" />
            <wire x2="1920" y1="240" y2="240" x1="1904" />
            <wire x2="1904" y1="240" y2="528" x1="1904" />
        </branch>
        <branch name="Pulse(3:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1104" y="336" type="branch" />
            <wire x2="1104" y1="336" y2="336" x1="1040" />
        </branch>
        <branch name="Disp_num(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2949" y="816" type="branch" />
            <wire x2="2800" y1="384" y2="384" x1="2688" />
            <wire x2="2688" y1="384" y2="816" x1="2688" />
            <wire x2="3200" y1="816" y2="816" x1="2688" />
            <wire x2="3200" y1="816" y2="1024" x1="3200" />
            <wire x2="3200" y1="1024" y2="1024" x1="3184" />
        </branch>
        <iomarker fontsize="28" x="1920" y="240" name="readn" orien="R0" />
        <iomarker fontsize="28" x="1456" y="160" name="RDY" orien="R0" />
        <iomarker fontsize="28" x="240" y="304" name="BTN_y(3:0)" orien="R180" />
        <iomarker fontsize="28" x="208" y="400" name="SW(15:0)" orien="R180" />
        <iomarker fontsize="28" x="192" y="240" name="RSTN" orien="R180" />
        <branch name="LED(7:0)">
            <wire x2="3360" y1="2448" y2="2448" x1="3296" />
        </branch>
        <branch name="V5">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2944" y="2208" type="branch" />
            <wire x2="3088" y1="2208" y2="2208" x1="2944" />
        </branch>
        <branch name="Buzzer">
            <wire x2="3392" y1="2208" y2="2208" x1="3312" />
        </branch>
        <instance x="1488" y="480" name="M4" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="144" y="-192" type="instance" />
        </instance>
        <iomarker fontsize="28" x="3360" y="2448" name="LED(7:0)" orien="R0" />
        <instance x="2816" y="2576" name="U71" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="160" y="-192" type="instance" />
        </instance>
        <branch name="counter_set(1:0)">
            <wire x2="3408" y1="2352" y2="2352" x1="3296" />
        </branch>
        <branch name="GPIOf0_PIO(21:0)">
            <wire x2="3408" y1="2544" y2="2544" x1="3296" />
        </branch>
        <iomarker fontsize="28" x="3392" y="2208" name="Buzzer" orien="R0" />
        <instance x="3088" y="2240" name="XLXI_35" orien="R0" />
        <iomarker fontsize="28" x="1088" y="240" name="CR" orien="R0" />
        <bustap x2="1664" y1="752" y2="752" x1="1568" />
        <instance x="1408" y="704" name="XLXI_40" orien="R0" />
        <instance x="1488" y="1680" name="U4" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="208" y="-752" type="instance" />
        </instance>
        <instance x="1520" y="2288" name="U10" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="208" y="-304" type="instance" />
        </instance>
        <branch name="SW_OK(7:5)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2039" y="752" type="branch" />
            <wire x2="2416" y1="752" y2="752" x1="1664" />
            <wire x2="2416" y1="752" y2="1120" x1="2416" />
            <wire x2="2800" y1="1120" y2="1120" x1="2416" />
        </branch>
        <branch name="N0,N0,PC(31:2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2720" y="1328" type="branch" />
            <wire x2="2800" y1="1328" y2="1328" x1="2720" />
        </branch>
        <branch name="XLXN_325">
            <wire x2="1248" y1="1088" y2="1088" x1="1088" />
            <wire x2="1248" y1="1088" y2="1136" x1="1248" />
            <wire x2="1520" y1="1136" y2="1136" x1="1248" />
        </branch>
        <branch name="Addr_out(31:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1280" y="1200" type="branch" />
            <wire x2="1120" y1="1344" y2="1344" x1="1088" />
            <wire x2="1120" y1="1200" y2="1344" x1="1120" />
            <wire x2="1280" y1="1200" y2="1200" x1="1120" />
            <wire x2="1520" y1="1200" y2="1200" x1="1280" />
        </branch>
        <branch name="Data_out(31:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1280" y="1328" type="branch" />
            <wire x2="1200" y1="1408" y2="1408" x1="1088" />
            <wire x2="1280" y1="1328" y2="1328" x1="1200" />
            <wire x2="1520" y1="1328" y2="1328" x1="1280" />
            <wire x2="1200" y1="1328" y2="1408" x1="1200" />
        </branch>
        <iomarker fontsize="28" x="144" y="592" name="clk_100mhz" orien="R180" />
        <branch name="IO_clk">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2008" y="672" type="branch" />
            <wire x2="2480" y1="1760" y2="1760" x1="1504" />
            <wire x2="2800" y1="1760" y2="1760" x1="2480" />
            <wire x2="1504" y1="1760" y2="1808" x1="1504" />
            <wire x2="1520" y1="1808" y2="1808" x1="1504" />
            <wire x2="2480" y1="672" y2="672" x1="1632" />
            <wire x2="2480" y1="672" y2="976" x1="2480" />
            <wire x2="2480" y1="976" y2="1760" x1="2480" />
            <wire x2="2800" y1="976" y2="976" x1="2480" />
        </branch>
        <branch name="ram_addr(9:0)">
            <wire x2="576" y1="2272" y2="2352" x1="576" />
            <wire x2="608" y1="2352" y2="2352" x1="576" />
            <wire x2="1280" y1="2272" y2="2272" x1="576" />
            <wire x2="1280" y1="1568" y2="2272" x1="1280" />
            <wire x2="1520" y1="1568" y2="1568" x1="1280" />
        </branch>
        <branch name="data_ram_we(0:0)">
            <wire x2="1248" y1="2240" y2="2240" x1="544" />
            <wire x2="544" y1="2240" y2="2416" x1="544" />
            <wire x2="608" y1="2416" y2="2416" x1="544" />
            <wire x2="1520" y1="1520" y2="1520" x1="1248" />
            <wire x2="1248" y1="1520" y2="2240" x1="1248" />
        </branch>
        <branch name="ram_data_in(31:0)">
            <wire x2="512" y1="2208" y2="2496" x1="512" />
            <wire x2="608" y1="2496" y2="2496" x1="512" />
            <wire x2="1216" y1="2208" y2="2208" x1="512" />
            <wire x2="1520" y1="1472" y2="1472" x1="1216" />
            <wire x2="1216" y1="1472" y2="2208" x1="1216" />
        </branch>
        <branch name="SEGMENT(7:0)">
            <wire x2="2400" y1="2496" y2="2496" x1="2352" />
        </branch>
        <branch name="AN(3:0)">
            <wire x2="2416" y1="2624" y2="2624" x1="2352" />
        </branch>
        <instance x="2000" y="2688" name="U61" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="144" y="-160" type="instance" />
        </instance>
        <branch name="SW_OK(1),Div(19:18)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1952" y="2480" type="branch" />
            <wire x2="2000" y1="2480" y2="2480" x1="1952" />
        </branch>
        <branch name="SW_OK(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1952" y="2512" type="branch" />
            <wire x2="2000" y1="2512" y2="2512" x1="1952" />
        </branch>
        <branch name="Disp_num(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1952" y="2592" type="branch" />
            <wire x2="2000" y1="2592" y2="2592" x1="1952" />
        </branch>
        <branch name="LE_out(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1952" y="2656" type="branch" />
            <wire x2="2000" y1="2656" y2="2656" x1="1952" />
        </branch>
        <branch name="point_out(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1952" y="2624" type="branch" />
            <wire x2="2000" y1="2624" y2="2624" x1="1952" />
        </branch>
        <branch name="Div(25)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1952" y="2544" type="branch" />
            <wire x2="2000" y1="2544" y2="2544" x1="1952" />
        </branch>
        <iomarker fontsize="28" x="2416" y="2624" name="AN(3:0)" orien="R0" />
        <iomarker fontsize="28" x="2400" y="2496" name="SEGMENT(7:0)" orien="R0" />
        <branch name="XLXN_401">
            <wire x2="1360" y1="1728" y2="2128" x1="1360" />
            <wire x2="1520" y1="2128" y2="2128" x1="1360" />
            <wire x2="2048" y1="1728" y2="1728" x1="1360" />
            <wire x2="2048" y1="1616" y2="1616" x1="2016" />
            <wire x2="2048" y1="1616" y2="1728" x1="2048" />
        </branch>
        <bustap x2="1488" y1="1936" y2="1936" x1="1392" />
        <bustap x2="1488" y1="2000" y2="2000" x1="1392" />
        <bustap x2="1488" y1="2064" y2="2064" x1="1392" />
        <branch name="Div(8)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1501" y="1936" type="branch" />
            <wire x2="1520" y1="1936" y2="1936" x1="1488" />
        </branch>
        <branch name="Div(9)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1503" y="2000" type="branch" />
            <wire x2="1520" y1="2000" y2="2000" x1="1488" />
        </branch>
        <branch name="Div(11)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1502" y="2064" type="branch" />
            <wire x2="1520" y1="2064" y2="2064" x1="1488" />
        </branch>
        <branch name="GPIOF0">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2064" y="1008" type="branch" />
            <wire x2="2064" y1="1008" y2="1008" x1="2016" />
            <wire x2="2352" y1="1008" y2="1008" x1="2064" />
            <wire x2="2352" y1="1008" y2="1856" x1="2352" />
            <wire x2="2800" y1="1856" y2="1856" x1="2352" />
        </branch>
        <instance x="2768" y="1984" name="U7" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="208" y="-160" type="instance" />
        </instance>
        <branch name="Div(20)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2704" y="1904" type="branch" />
            <wire x2="2800" y1="1904" y2="1904" x1="2704" />
        </branch>
        <branch name="XLXN_73(13:0)">
            <wire x2="3360" y1="1824" y2="1824" x1="3232" />
        </branch>
        <branch name="led_clrn">
            <wire x2="3360" y1="1952" y2="1952" x1="3232" />
        </branch>
        <branch name="LED_PEN">
            <wire x2="3360" y1="1920" y2="1920" x1="3232" />
        </branch>
        <branch name="led_sout">
            <wire x2="3360" y1="1888" y2="1888" x1="3232" />
        </branch>
        <branch name="led_clk">
            <wire x2="3360" y1="1856" y2="1856" x1="3232" />
        </branch>
        <iomarker fontsize="28" x="3360" y="1888" name="led_sout" orien="R0" />
        <iomarker fontsize="28" x="3360" y="1856" name="led_clk" orien="R0" />
        <branch name="rst">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1024" y="512" type="branch" />
            <wire x2="528" y1="624" y2="944" x1="528" />
            <wire x2="528" y1="944" y2="1184" x1="528" />
            <wire x2="640" y1="1184" y2="1184" x1="528" />
            <wire x2="1456" y1="944" y2="944" x1="528" />
            <wire x2="1520" y1="944" y2="944" x1="1456" />
            <wire x2="1456" y1="944" y2="1872" x1="1456" />
            <wire x2="1520" y1="1872" y2="1872" x1="1456" />
            <wire x2="560" y1="624" y2="624" x1="528" />
            <wire x2="704" y1="624" y2="624" x1="560" />
            <wire x2="560" y1="512" y2="624" x1="560" />
            <wire x2="1024" y1="512" y2="512" x1="560" />
            <wire x2="1040" y1="512" y2="512" x1="1024" />
            <wire x2="1040" y1="448" y2="512" x1="1040" />
            <wire x2="2448" y1="816" y2="816" x1="1456" />
            <wire x2="2448" y1="816" y2="1024" x1="2448" />
            <wire x2="2448" y1="1024" y2="1808" x1="2448" />
            <wire x2="2800" y1="1808" y2="1808" x1="2448" />
            <wire x2="2800" y1="1024" y2="1024" x1="2448" />
            <wire x2="1456" y1="816" y2="944" x1="1456" />
        </branch>
        <branch name="Bi(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2016" y="352" type="branch" />
            <wire x2="2016" y1="352" y2="352" x1="1808" />
        </branch>
        <branch name="CPU2IO(31:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2096" y="912" type="branch" />
            <wire x2="1520" y1="2192" y2="2192" x1="1440" />
            <wire x2="1440" y1="2192" y2="2400" x1="1440" />
            <wire x2="2320" y1="2400" y2="2400" x1="1440" />
            <wire x2="2096" y1="912" y2="912" x1="2016" />
            <wire x2="2320" y1="912" y2="912" x1="2096" />
            <wire x2="2320" y1="912" y2="1280" x1="2320" />
            <wire x2="2320" y1="1280" y2="1952" x1="2320" />
            <wire x2="2320" y1="1952" y2="2400" x1="2320" />
            <wire x2="2800" y1="1952" y2="1952" x1="2320" />
            <wire x2="2800" y1="1280" y2="1280" x1="2320" />
        </branch>
        <branch name="GPIOe0000000_we">
            <wire x2="2384" y1="960" y2="960" x1="2016" />
            <wire x2="2384" y1="960" y2="1072" x1="2384" />
            <wire x2="2800" y1="1072" y2="1072" x1="2384" />
        </branch>
        <instance x="2800" y="1648" name="U5" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="256" y="-432" type="instance" />
        </instance>
        <branch name="Ai(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2016" y="288" type="branch" />
            <wire x2="2016" y1="288" y2="288" x1="1808" />
        </branch>
        <branch name="rst">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2768" y="2416" type="branch" />
            <wire x2="2848" y1="2416" y2="2416" x1="2768" />
        </branch>
        <branch name="GPIOF0">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2768" y="2480" type="branch" />
            <wire x2="2848" y1="2480" y2="2480" x1="2768" />
        </branch>
        <branch name="CPU2IO(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2768" y="2544" type="branch" />
            <wire x2="2848" y1="2544" y2="2544" x1="2768" />
        </branch>
        <branch name="IO_clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2768" y="2352" type="branch" />
            <wire x2="2848" y1="2352" y2="2352" x1="2768" />
        </branch>
        <branch name="XLXN_428">
            <wire x2="2112" y1="1552" y2="1552" x1="2016" />
            <wire x2="2112" y1="1552" y2="1952" x1="2112" />
            <wire x2="2112" y1="1952" y2="1952" x1="2032" />
        </branch>
        <branch name="XLXN_429">
            <wire x2="2144" y1="1520" y2="1520" x1="2016" />
            <wire x2="2144" y1="1520" y2="2096" x1="2144" />
            <wire x2="2144" y1="2096" y2="2096" x1="2032" />
        </branch>
        <branch name="Counter_out(31:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2128" y="1488" type="branch" />
            <wire x2="2128" y1="1488" y2="1488" x1="2016" />
            <wire x2="2176" y1="1488" y2="1488" x1="2128" />
            <wire x2="2176" y1="1488" y2="2240" x1="2176" />
            <wire x2="2176" y1="2240" y2="2240" x1="2032" />
        </branch>
        <branch name="XLXN_432(1:0)">
            <wire x2="1520" y1="2256" y2="2256" x1="1488" />
            <wire x2="1488" y1="2256" y2="2352" x1="1488" />
            <wire x2="2256" y1="2352" y2="2352" x1="1488" />
            <wire x2="2256" y1="1712" y2="2352" x1="2256" />
            <wire x2="3376" y1="1712" y2="1712" x1="2256" />
            <wire x2="3376" y1="1712" y2="1760" x1="3376" />
            <wire x2="3376" y1="1760" y2="1760" x1="3232" />
        </branch>
        <branch name="LED_out(15:0)">
            <wire x2="2240" y1="1312" y2="1312" x1="2016" />
            <wire x2="2240" y1="1312" y2="1680" x1="2240" />
            <wire x2="3424" y1="1680" y2="1680" x1="2240" />
            <wire x2="3424" y1="1680" y2="1792" x1="3424" />
            <wire x2="3424" y1="1792" y2="1792" x1="3232" />
        </branch>
        <branch name="N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0">
            <wire x2="2800" y1="1232" y2="1232" x1="2656" />
        </branch>
        <branch name="inst(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2720" y="1376" type="branch" />
            <wire x2="2800" y1="1376" y2="1376" x1="2720" />
        </branch>
        <branch name="Counter_out(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2720" y="1424" type="branch" />
            <wire x2="2800" y1="1424" y2="1424" x1="2720" />
        </branch>
        <branch name="Addr_out(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2720" y="1472" type="branch" />
            <wire x2="2800" y1="1472" y2="1472" x1="2720" />
        </branch>
        <branch name="Data_out(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2720" y="1520" type="branch" />
            <wire x2="2800" y1="1520" y2="1520" x1="2720" />
        </branch>
        <branch name="Data_in(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2720" y="1568" type="branch" />
            <wire x2="2800" y1="1568" y2="1568" x1="2720" />
        </branch>
        <branch name="PC(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2720" y="1616" type="branch" />
            <wire x2="2800" y1="1616" y2="1616" x1="2720" />
        </branch>
        <instance x="608" y="2272" name="U3" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="272" y="144" type="instance" />
        </instance>
        <iomarker fontsize="28" x="3360" y="1920" name="LED_PEN" orien="R0" />
        <iomarker fontsize="28" x="3360" y="1952" name="led_clrn" orien="R0" />
        <branch name="Div(25)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2704" y="336" type="branch" />
            <wire x2="2800" y1="336" y2="336" x1="2704" />
        </branch>
        <branch name="seg_clk">
            <wire x2="3248" y1="208" y2="208" x1="3184" />
        </branch>
        <branch name="seg_sout">
            <wire x2="3248" y1="272" y2="272" x1="3184" />
        </branch>
        <branch name="SEG_PEN">
            <wire x2="3248" y1="336" y2="336" x1="3184" />
        </branch>
        <branch name="seg_clrn">
            <wire x2="3248" y1="400" y2="400" x1="3184" />
        </branch>
        <instance x="2800" y="496" name="U6" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="160" y="-288" type="instance" />
        </instance>
        <branch name="rst">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2688" y="192" type="branch" />
            <wire x2="2800" y1="192" y2="192" x1="2688" />
        </branch>
        <branch name="Div(20)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2688" y="224" type="branch" />
            <wire x2="2800" y1="224" y2="224" x1="2688" />
        </branch>
        <branch name="SW_OK(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2688" y="272" type="branch" />
            <wire x2="2800" y1="272" y2="272" x1="2688" />
        </branch>
        <iomarker fontsize="28" x="3248" y="208" name="seg_clk" orien="R0" />
        <iomarker fontsize="28" x="3248" y="272" name="seg_sout" orien="R0" />
        <iomarker fontsize="28" x="3248" y="336" name="SEG_PEN" orien="R0" />
        <iomarker fontsize="28" x="3248" y="400" name="seg_clrn" orien="R0" />
        <branch name="point_out(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2971" y="752" type="branch" />
            <wire x2="2800" y1="416" y2="416" x1="2736" />
            <wire x2="2736" y1="416" y2="752" x1="2736" />
            <wire x2="3248" y1="752" y2="752" x1="2736" />
            <wire x2="3248" y1="752" y2="1072" x1="3248" />
            <wire x2="3248" y1="1072" y2="1072" x1="3184" />
        </branch>
        <branch name="LE_out(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3013" y="688" type="branch" />
            <wire x2="2800" y1="448" y2="448" x1="2784" />
            <wire x2="2784" y1="448" y2="688" x1="2784" />
            <wire x2="3296" y1="688" y2="688" x1="2784" />
            <wire x2="3296" y1="688" y2="1120" x1="3296" />
            <wire x2="3296" y1="1120" y2="1120" x1="3184" />
        </branch>
        <branch name="clk_100mhz">
            <wire x2="256" y1="592" y2="592" x1="144" />
            <wire x2="624" y1="592" y2="592" x1="256" />
            <wire x2="704" y1="592" y2="592" x1="624" />
            <wire x2="624" y1="592" y2="880" x1="624" />
            <wire x2="1520" y1="880" y2="880" x1="624" />
            <wire x2="256" y1="592" y2="2544" x1="256" />
            <wire x2="608" y1="2544" y2="2544" x1="256" />
            <wire x2="1312" y1="64" y2="64" x1="624" />
            <wire x2="1312" y1="64" y2="240" x1="1312" />
            <wire x2="1488" y1="240" y2="240" x1="1312" />
            <wire x2="2048" y1="64" y2="64" x1="1312" />
            <wire x2="2048" y1="64" y2="160" x1="2048" />
            <wire x2="2800" y1="160" y2="160" x1="2048" />
            <wire x2="624" y1="64" y2="272" x1="624" />
            <wire x2="672" y1="272" y2="272" x1="624" />
            <wire x2="624" y1="272" y2="592" x1="624" />
        </branch>
        <branch name="State(4:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1168" y="1472" type="branch" />
            <wire x2="1168" y1="1472" y2="1472" x1="1088" />
        </branch>
        <branch name="inst(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="176" y="1248" type="branch" />
            <wire x2="432" y1="1248" y2="1248" x1="176" />
            <wire x2="432" y1="1024" y2="1248" x1="432" />
            <wire x2="1168" y1="1024" y2="1024" x1="432" />
            <wire x2="1168" y1="1024" y2="1280" x1="1168" />
            <wire x2="1168" y1="1280" y2="1280" x1="1088" />
        </branch>
        <branch name="Data_in(31:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1264" y="1264" type="branch" />
            <wire x2="1104" y1="992" y2="992" x1="576" />
            <wire x2="1104" y1="992" y2="1264" x1="1104" />
            <wire x2="1264" y1="1264" y2="1264" x1="1104" />
            <wire x2="1520" y1="1264" y2="1264" x1="1264" />
            <wire x2="576" y1="992" y2="1472" x1="576" />
            <wire x2="640" y1="1472" y2="1472" x1="576" />
        </branch>
        <branch name="XLXN_400">
            <wire x2="640" y1="1376" y2="1376" x1="560" />
            <wire x2="560" y1="1376" y2="1696" x1="560" />
            <wire x2="2080" y1="1696" y2="1696" x1="560" />
            <wire x2="2080" y1="1696" y2="1808" x1="2080" />
            <wire x2="2080" y1="1584" y2="1584" x1="2016" />
            <wire x2="2080" y1="1584" y2="1696" x1="2080" />
            <wire x2="2080" y1="1808" y2="1808" x1="2032" />
        </branch>
        <branch name="Clk_CPU">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1200" y="672" type="branch" />
            <wire x2="1120" y1="976" y2="976" x1="48" />
            <wire x2="48" y1="976" y2="1008" x1="48" />
            <wire x2="80" y1="1008" y2="1008" x1="48" />
            <wire x2="80" y1="1008" y2="1088" x1="80" />
            <wire x2="640" y1="1088" y2="1088" x1="80" />
            <wire x2="1120" y1="672" y2="672" x1="1024" />
            <wire x2="1200" y1="672" y2="672" x1="1120" />
            <wire x2="1408" y1="672" y2="672" x1="1200" />
            <wire x2="1120" y1="672" y2="976" x1="1120" />
        </branch>
        <instance x="640" y="1504" name="XLXI_45" orien="R0">
        </instance>
        <branch name="V5">
            <attrtext style="alignment:SOFT-VRIGHT;fontsize:28;fontname:Arial" attrname="Name" x="400" y="1344" type="branch" />
            <wire x2="640" y1="1280" y2="1280" x1="400" />
            <wire x2="400" y1="1280" y2="1344" x1="400" />
        </branch>
        <branch name="ram_data_out(31:0)">
            <wire x2="1312" y1="2416" y2="2416" x1="1056" />
            <wire x2="1520" y1="1616" y2="1616" x1="1312" />
            <wire x2="1312" y1="1616" y2="2416" x1="1312" />
        </branch>
        <branch name="PC(31:0)">
            <attrtext style="alignment:SOFT-VRIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1136" y="1888" type="branch" />
            <wire x2="1136" y1="1216" y2="1216" x1="1088" />
            <wire x2="1136" y1="1216" y2="1888" x1="1136" />
        </branch>
        <iomarker fontsize="28" x="240" y="352" name="BTN_x(4:0)" orien="R180" />
    </sheet>
</drawing>