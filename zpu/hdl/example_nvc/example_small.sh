#!/bin/bash

a_opts=""
e_opts="--native"
r_opts="--stop-time=1ms --stats"

nvc -a $a_opts ../../hdl/example/zpu_config.vhd
nvc -a $a_opts ../../hdl/zpu4/core/zpupkg.vhd
nvc -a $a_opts ../../hdl/example/interrupt.vhd
nvc -a $a_opts ../../hdl/zpu4/src/txt_util.vhd
nvc -a $a_opts ../../hdl/zpu4/src/trace.vhd
nvc -a $a_opts ../../hdl/zpu4/core/zpu_core_small.vhd
nvc -a $a_opts ../../hdl/zpu4/src/io.vhd
nvc -a $a_opts ../../hdl/zpu4/src/timer.vhd
nvc -a $a_opts ../../hdl/example/sim_small_fpga_top.vhd

nvc -e fpga_top
