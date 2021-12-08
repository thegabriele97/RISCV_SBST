.PHONY: zoix

DUT := alu
STIL := results/$(DUT)_atpg_seq.stil
OUT_ASM := "./tmp/$(DUT).S"
DST_ASM := "sbst/$(DUT).S"
OUT_NOTIM := "not_implemented.log" 

parser:
	./stil_parser_$(DUT).py $(STIL) 2> $(OUT_NOTIM) >$(OUT_ASM)
	@echo -n "Word Count '$(OUT_ASM)': "
	@cat $(OUT_ASM) | wc -l
	@echo -n "Word Count '$(OUT_NOTIM)': "
	@cat $(OUT_NOTIM) | wc -l

parser_sigs:
	./stil_parser_$(DUT).py $(STIL) -p tmp/$(DUT)_sigs.txt 2> $(OUT_NOTIM) >$(OUT_ASM)

zoix: put_asm build zoix_only

zoix_only:
	./run_gate_nogui.sh
	./run_zoix_fsim.sh

build:
	./compile_sbst.sh

put_asm:
	./put_asm.py $(DST_ASM) $(OUT_ASM)

get_signature:
	./get_signature.py

do_final_parser: get_all_signatures
	make parser_sigs

get_all_signatures:
	./try_subroutines.sh | grep 'SIGNATURE:' > tmp/$(DUT)_sigs.txt
	cat tmp/$(DUT)_sigs.txt
