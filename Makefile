# Makefile for Anti-67 Sword mod

# Tool locations
CC := clang
LD := ld.lld
OBJCOPY := llvm-objcopy

# Directories
BUILD_DIR := build
SRC_DIR := src
INCLUDE_DIR := include

# Compiler flags
CFLAGS := -target mips -mabi=o32 -march=mips32r2 -mno-abicalls -mdivide-breaks -fno-PIC -fomit-frame-pointer
CFLAGS += -G0 -Wall -Wextra -Wno-unused-parameter -Wno-unused-variable -Wno-missing-braces
CFLAGS += -I$(INCLUDE_DIR) -Imm-decomp/include -Imm-decomp/src -Imm-decomp/assets -Iinclude/dummy_headers
CFLAGS += -D_LANGUAGE_C -DMIPS

# Linker flags
LDFLAGS := -nostdlib --emit-relocs -T mod.ld -T mod_syms.ld -Map=$(BUILD_DIR)/mod.map --just-symbols=Zelda64RecompSyms/mm.us.rev1.syms.elf

# Source files
C_FILES := $(wildcard $(SRC_DIR)/*.c)
O_FILES := $(C_FILES:$(SRC_DIR)/%.c=$(BUILD_DIR)/%.o)

# Output
MOD_ELF := $(BUILD_DIR)/mod.elf
HOOKS_BIN := $(BUILD_DIR)/hooks.bin

.PHONY: all clean

all: $(BUILD_DIR) $(HOOKS_BIN)

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

# Compile C files to object files
$(BUILD_DIR)/%.o: $(SRC_DIR)/%.c
	$(CC) $(CFLAGS) -c $< -o $@

# Link object files
$(MOD_ELF): $(O_FILES)
	$(LD) $(O_FILES) $(LDFLAGS) -o $@

# Create hooks binary
$(HOOKS_BIN): $(MOD_ELF)
	$(OBJCOPY) -O binary -j .text -j .data -j .rodata -j .bss $< $@

clean:
	rm -rf $(BUILD_DIR)
