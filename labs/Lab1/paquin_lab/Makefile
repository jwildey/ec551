ICARUS_VERILOG := $(shell command -v iverilog 2> /dev/null)

default: 
	echo -e "I can make:\n\tcpu\n\talu\n\tmemory\n\tregfile\n\treporter\n\ttermdisp\n\tchardisp"

iverilog: 
ifndef ICARUS_VERILOG
	$(error "This makefile requires iverilog")
endif


cpu: src/cpu.v src/cpu_tb.v src/alu.v src/idecode.v src/memory.v src/regfile.v iverilog
	pushd src; \
	iverilog -o run cpu_tb.v; \
	mv run ../sim; \
	popd

alu: src/alu.v src/alu_tb.v iverilog
	pushd src; \
	iverilog -o run alu_tb.v; \
	mv run ../sim; \
	popd

memory: src/memory.v src/memory_tb.v iverilog
	pushd src; \
	iverilog -o run memory_tb.v; \
	mv run ../sim; \
	popd

regfile: src/regfile.v src/regfile_tb.v iverilog
	pushd src; \
	iverilog -o run regfile_tb.v; \
	mv run ../sim; \
	popd

reporter: src/reporter.v src/disp_term.v src/disp_char.v src/seg7.v src/vga_fake.v iverilog
	pushd src; \
	iverilog -o run reporter_tb.v; \
	mv run ../sim; \
	popd

termdisp: src/disp_term.v src/disp_char.v iverilog
	pushd src; \
	iverilog -o run disp_term_tb.v; \
	mv run ../sim; \
	popd

chardisp: src/disp_char.v src/disp_char_tb.v iverilog
	pushd src; \
	iverilog -o run disp_char_tb.v; \
	mv run ../sim; \
	popd

assembly: demo.asm asm_tools.py
	python3 asm_tools.py assemble demo.asm
