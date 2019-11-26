$(COMPONENT_LIBRARY):dcode.a

SRC := $(wildcard $(COMPONENT_PATH)/*.d)
COMOBJS := $(patsubst %.d, %.o, $(SRC))

%.o : %.d
	ldc2 -mtriple=xtensa-esp32-elf -mcpu=esp32 -gcc=xtensa-esp32-elf-gcc -betterC -dip1000 -boundscheck=off -linkonce-templates -c $< -of=$@

COMPONENT_ADD_LDFLAGS += $(COMPONENT_BUILD_DIR)/dcodelib.a

dcodelib :
	xtensa-esp32-elf-ar rc $(COMPONENT_BUILD_DIR)/dcodelib.a $(COMOBJS)

dcode.a: $(SRC) $(COMOBJS) dcodelib