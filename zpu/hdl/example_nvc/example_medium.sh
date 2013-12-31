#!/bin/bash

a_opts=""
e_opts="--native"
r_opts="--stop-time=1ms --stats"

nvc -a $a_opts ../../hdl/example_medium/zpu_config_trace.vhd
nvc -a $a_opts ../../hdl/zpu4/core/zpupkg.vhd
nvc -a $a_opts ../../hdl/example_medium/dram_hello.vhd
nvc -a $a_opts ../../hdl/zpu4/src/txt_util.vhd
nvc -a $a_opts ../../hdl/zpu4/src/trace.vhd
nvc -a $a_opts ../../hdl/zpu4/core/zpu_core.vhd
nvc -a $a_opts ../../hdl/zpu4/src/io.vhd
nvc -a $a_opts ../../hdl/zpu4/src/timer.vhd
nvc -a $a_opts ../../hdl/example_medium/sim_fpga_top.vhd

nvc -e $e_opts fpga_top

nvc -r $r_opts fpga_top 
