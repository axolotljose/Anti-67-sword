# Anti-67 Sword Mod for Majora's Mask: Recompiled

A mod that adds the Anti-67 Sword to Majora's Mask: Recompiled. This powerful weapon is for those who dislike the 67 meme!

## Features

- **New Item**: Anti-67 Sword automatically given at game start
- **C-Button Equippable**: Can be equipped to C-Left, C-Down, or C-Right
- **Energy Beams**: Shoots powerful beams when swung (similar to Fierce Deity sword)
- **Enhanced Stats**: Higher damage (8) and extended range (800 units)

## Building the Mod

### Prerequisites

You'll need the following tools installed:
- `clang` (version 18.1.8 recommended for proper MIPS support)
- `make`
- `RecompModTool` from [N64Recomp releases](https://github.com/N64Recomp/N64Recomp/releases)

### Build Steps

1. **Clone the template repository** (if you haven't already):
```bash
git clone --recursive https://github.com/Zelda64Recomp/MMRecompModTemplate.git anti67_sword_mod
cd anti67_sword_mod
```

2. **Replace the template files** with the Anti-67 Sword mod files:
   - Copy `mod.toml` to the root directory
   - Copy `anti67_sword.c` to the `src/` directory
   - Copy `Makefile` to the root directory
   - Copy `mod.ld` to the root directory

3. **Build the mod code**:
```bash
make -j4
```

4. **Generate the mod file (.nrm)**:
```bash
RecompModTool mod.toml build
```

This will create `anti67sword.nrm` in the `build/` directory.

## Installation

### Using GitHub Actions (Recommended for Mobile)

Since you're on mobile, the easiest way is to use GitHub Actions to build automatically:

1. Fork or create a new repository from the MMRecompModTemplate
2. Upload these mod files to your repository
3. Push to GitHub
4. GitHub Actions will automatically build the mod
5. Download the `.nrm` file from the Actions artifacts

### Manual Installation

1. Locate your `anti67sword.nrm` file from the build
2. Open Majora's Mask: Recompiled
3. Drag and drop the `.nrm` file onto the game window, OR
4. Click "Install Mods" in the mod menu and select the `.nrm` file

## Usage

1. Start a new game or load an existing save
2. The Anti-67 Sword will automatically be added to your inventory
3. Open the pause menu and equip it to a C-button (C-Left, C-Down, or C-Right)
4. Swing the sword to shoot powerful energy beams!

## Technical Details

### Beam Properties
- **Damage**: 8 (higher than standard sword beams)
- **Range**: 800 units (extended range)
- **Speed**: 30.0 units/frame
- **Behavior**: Fires on every sword swing, similar to Fierce Deity sword

### Item ID
- Custom Item ID: `0xA0` (avoids conflicts with existing items)

## Customization

Want to modify the sword's properties? Edit these values in `anti67_sword.c`:

```c
#define ANTI67_BEAM_DAMAGE 8      // Beam damage
#define ANTI67_BEAM_RANGE 800.0f  // Maximum travel distance
```

Then rebuild the mod using the steps above.

## Troubleshooting

### Build Errors

**"clang: command not found"**
- Install clang via your package manager or Chocolatey (Windows)

**"MIPS target not supported"**
- Make sure you're using LLVM/Clang 18.1.8, not 19.x

**"Missing header files"**
- Ensure you've initialized the git submodules: `git submodule update --init --recursive`

### Game Crashes

- Make sure you're using Majora's Mask: Recompiled version 1.2.2 or higher
- Try disabling other mods to check for conflicts
- Verify the `.nrm` file was built correctly

## Credits

- **Mod Author**: Anti67 Modder
- **Template**: [Zelda64Recomp Team](https://github.com/Zelda64Recomp)
- **Zelda 64: Recompiled**: [Zelda64Recomp Project](https://github.com/Zelda64Recomp/Zelda64Recomp)

## License

This mod is released under CC0-1.0 license (public domain).

## Support

For issues or questions:
- Open an issue on the GitHub repository
- Join the [N64: Recompiled Discord](https://discord.gg/N64Recomp)
