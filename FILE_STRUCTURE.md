# Anti-67 Sword Mod - Complete File Structure

This document lists all the files you need for your mod.

## Directory Structure

```
anti67_sword_mod/
├── .github/
│   └── workflows/
│       └── build.yml          # GitHub Actions auto-build
├── include/
│   └── modding.h              # Modding API definitions
├── src/
│   └── anti67_sword.c         # Main mod source code
├── .gitignore                 # Git ignore file
├── generate_symbols.toml      # Symbol generation config
├── Makefile                   # Build system
├── MOBILE_SETUP.md            # Mobile-specific setup guide
├── mod.ld                     # Linker script
├── mod.toml                   # Mod configuration
├── mod_syms.ld                # Mod symbols (stub)
└── README.md                  # Main documentation
```

## Required Template Files (from MMRecompModTemplate)

You'll also need these from the template repository:
- `mm-decomp/` (submodule)
- `Zelda64RecompSyms/` (submodule)
- `offline_build/` directory
- `overlays.us.rev1.txt`

## Setup Steps

### Option 1: Using GitHub Template (Recommended for Mobile)

1. Go to: https://github.com/Zelda64Recomp/MMRecompModTemplate
2. Click "Use this template" → "Create a new repository"
3. Name it `anti67-sword-mod`
4. Upload/replace the files from this package:
   - mod.toml
   - src/anti67_sword.c
   - Makefile
   - mod.ld
   - README.md
   - .github/workflows/build.yml
   - include/modding.h
   - generate_symbols.toml
5. Commit the changes
6. GitHub Actions will automatically build your mod
7. Download the .nrm file from Actions artifacts

### Option 2: Local Build (Desktop)

1. Clone the template:
   ```bash
   git clone --recursive https://github.com/Zelda64Recomp/MMRecompModTemplate.git anti67_sword_mod
   cd anti67_sword_mod
   ```

2. Replace/add files from this package

3. Build:
   ```bash
   make -j4
   RecompModTool mod.toml build
   ```

4. Your mod will be in `build/anti67sword.nrm`

## Installation in Game

1. Open Majora's Mask: Recompiled
2. Drag the .nrm file onto the game window, OR
3. Use "Install Mods" button in the mod menu
4. Enable the mod
5. Start playing!

## Key Features Implemented

✅ Custom sword item (Anti-67 Sword)
✅ Automatic item at game start
✅ C-button equippable (all three buttons)
✅ Energy beam projectiles on swing
✅ Custom damage (8) and range (800)
✅ Fierce Deity-style beam mechanics

## Customization

Edit `src/anti67_sword.c` to customize:
- Beam damage: `ANTI67_BEAM_DAMAGE`
- Beam range: `ANTI67_BEAM_RANGE`
- Item ID: `ITEM_ANTI67_SWORD`

Then rebuild the mod.

## Support

- Discord: N64: Recompiled Community
- Docs: https://hackmd.io/fMDiGEJ9TBSjomuZZOgzNg
- Template: https://github.com/Zelda64Recomp/MMRecompModTemplate

---

Ready to start? Follow MOBILE_SETUP.md for step-by-step mobile instructions!
