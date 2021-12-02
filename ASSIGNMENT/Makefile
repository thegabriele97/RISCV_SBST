.PHONY: zoix

STIL := results/alu_atpg_seq.stil
OUT_ASM := "/tmp/alu.S"
OUT_NOTIM := "not_implemented.log" 

parser:
	./stil_parser.py $(STIL) 2> $(OUT_NOTIM) >$(OUT_ASM)
	@echo -n "Word Count '$(OUT_ASM)': "
	@cat $(OUT_ASM) | wc -l
	@echo -n "Word Count '$(OUT_NOTIM)': "
	@cat $(OUT_NOTIM) | wc -l

zoix: build
	./run_gate_nogui.sh
	./run_zoix_fsim.sh

build:
	./compile_sbst.sh
