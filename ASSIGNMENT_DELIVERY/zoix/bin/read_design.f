// file to be compiled for ZOIX, called from zoix_fsim/run


// ------------------ CPU and Tech Lib


//+incdir+./bin
+incdir+$env(ZOIX_DIR)/bin

-v $(GATE_DIR)/NangateOpenCellLibrary.v
$(GATE_DIR)/riscv_core.v
