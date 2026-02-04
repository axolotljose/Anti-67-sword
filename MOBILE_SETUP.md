# Mobile Setup Guide for Anti-67 Sword Mod

This guide will help you set up the mod on GitHub using only your mobile device!

## Step 1: Create Your GitHub Repository

1. Go to https://github.com/Zelda64Recomp/MMRecompModTemplate
2. Click the green "Use this template" button
3. Select "Create a new repository"
4. Name it `anti67-sword-mod`
5. Make it Public
6. Click "Create repository"

## Step 2: Upload the Mod Files

You'll need to upload the following files from this mod to your new repository:

### Files to Upload:

1. **mod.toml** - Replace the existing one
2. **src/anti67_sword.c** - Replace the existing example C file
3. **Makefile** - Replace the existing one
4. **mod.ld** - Replace the existing one
5. **README.md** - Replace the existing one
6. **.github/workflows/build.yml** - Create this directory structure

### How to Upload on Mobile:

For each file:
1. Navigate to the file location in your repo
2. Click the pencil icon (Edit) or "Add file" → "Create new file"
3. Copy the content from the corresponding file in this package
4. Paste into the editor
5. Click "Commit changes"

## Step 3: Trigger the Build

Once all files are uploaded:

1. Go to the "Actions" tab in your repository
2. You should see "Build Anti-67 Sword Mod" workflow
3. If it hasn't run automatically, click "Run workflow"
4. Wait for the build to complete (green checkmark)

## Step 4: Download Your Mod

1. Click on the completed workflow run
2. Scroll down to "Artifacts"
3. Download "anti67sword-mod"
4. Extract the `.nrm` file

## Step 5: Install in Game

1. Transfer the `.nrm` file to your device running Majora's Mask: Recompiled
2. Open the game
3. Go to the mod menu
4. Click "Install Mods" and select your `.nrm` file
   OR drag and drop the file onto the game window
5. Enable the mod
6. Start playing!

## Troubleshooting

### Build Failed?

Check the build logs in GitHub Actions for errors. Common issues:
- Missing files: Make sure all files were uploaded correctly
- Syntax errors: Double-check that file contents were copied completely

### Need Help?

- Join the N64: Recompiled Discord: https://discord.gg/N64Recomp
- Open an issue on your GitHub repository
- Check the main README.md for more detailed information

## Quick Tips for Mobile Users

- Use GitHub's mobile app for easier file management
- Use a text editor app to prepare files before uploading
- Save your work frequently - mobile browsers can be unstable
- Consider using GitHub Codespaces if available (web-based IDE)

## Alternative: Using GitHub Codespaces

If your GitHub account has access to Codespaces:

1. Open your repository
2. Click the green "Code" button
3. Select "Codespaces" tab
4. Click "Create codespace on main"
5. A full development environment will open in your browser
6. You can edit files and run build commands here!

This is especially useful on mobile as it gives you a full Linux environment with all tools pre-installed.

---

Enjoy your Anti-67 Sword! 🗡️
