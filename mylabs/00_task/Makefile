FILES = first_module.v test_module.v

all: main.out

main.out: $(FILES)
	iverilog  $^ -o $@

start: main.out
	./$<
	gtkwave *.vcd

clean:
	$(RM) *.out *.o *.vcd

help:
	@echo "  start - Compile, start and open in gtkwave
	@echo "  clean - Remove most generated files"
	@echo "  help  - Display this text"