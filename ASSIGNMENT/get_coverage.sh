if test $1 = "alu"
then
    echo "FaultGenerate
            {

                #NA [0,1] { PORT \"riscv_core_0_128_1_16_1_1_0_0_0_0_0_0_0_0_0_3_6_15_5_1a110800.id_stage_i.registers_i.**\" } 
                NA [0,1] { PORT \"riscv_core_0_128_1_16_1_1_0_0_0_0_0_0_0_0_0_3_6_15_5_1a110800.ex_stage_i.alu_i.**\" } 
                #NA [R,F] { PORT \"riscv_core_0_128_1_16_1_1_0_0_0_0_0_0_0_0_0_3_6_15_5_1a110800.**\" }
                #NA [R,F] { PORT \"riscv_core_0_128_1_16_1_1_0_0_0_0_0_0_0_0_0_3_6_15_5_1a110800.ex_stage.i_alu_i.**\" }

            }" > zoix/bin/user.sff
elif test $1 = "reg"
then
    echo "FaultGenerate
            {

                NA [0,1] { PORT \"riscv_core_0_128_1_16_1_1_0_0_0_0_0_0_0_0_0_3_6_15_5_1a110800.id_stage_i.registers_i.**\" } 
                #NA [0,1] { PORT \"riscv_core_0_128_1_16_1_1_0_0_0_0_0_0_0_0_0_3_6_15_5_1a110800.ex_stage_i.alu_i.**\" } 
                #NA [R,F] { PORT \"riscv_core_0_128_1_16_1_1_0_0_0_0_0_0_0_0_0_3_6_15_5_1a110800.**\" }
                #NA [R,F] { PORT \"riscv_core_0_128_1_16_1_1_0_0_0_0_0_0_0_0_0_3_6_15_5_1a110800.ex_stage.i_alu_i.**\" }

            }" > zoix/bin/user.sff
fi

./compile_testbench.sh > /tmp/null
./compile_sbst.sh > /tmp/null
./run_gate_nogui.sh > /tmp/null
./run_zoix_fsim.sh