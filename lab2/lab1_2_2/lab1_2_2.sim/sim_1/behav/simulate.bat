@echo off
set xv_path=D:\\Xilinx\\Vivado\\2015.2\\bin
call %xv_path%/xsim mux_2bit_2_to_1_dataflow_tb_behav -key {Behavioral:sim_1:Functional:mux_2bit_2_to_1_dataflow_tb} -tclbatch mux_2bit_2_to_1_dataflow_tb.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
