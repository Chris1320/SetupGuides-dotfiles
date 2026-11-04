# Mpv

This dotfile uses **uosc** as the base Mpv frontend.

- **`profile-high`**: Default configuration for high quality playback
  - Enabled automatic scaling shaders:
    - `FSR.glsl` automatically runs on upscaling.
    - `SSimDownscaler.glsl` automatically runs on downscaling.
- **`profile-low`**: Optimized for lower-end machines and power saving.
  - Uses `profile=fast`.
  - Shaders disabled by default.
  - `yt-dlp` stream quality capped to 1080p (`bestvideo[height<=1080]+bestaudio/best`).

## Shader Hotkeys

| Shortcut     | Action                | Shader Description                                             |
| ------------ | --------------------- | -------------------------------------------------------------- |
| `Ctrl` + `0` | Clear GLSL shaders    | Clears all active user shaders                                 |
| `Ctrl` + `1` | Toggle FSR            | AMD FidelityFX Super Resolution (EASU + RCAS upscaler)         |
| `Ctrl` + `2` | Toggle SSimDownscaler | SSIM-based perceptual downscaler                               |
| `Ctrl` + `3` | Toggle CAS-scaled     | AMD FidelityFX Contrast Adaptive Sharpening                    |
| `Ctrl` + `4` | Toggle KrigBilateral  | Chromatic bilateral filter for chroma scaling                  |
| `Ctrl` + `5` | Toggle FSRCNNX        | Neural network upscaler (`16-0-4-1` on high, `8-0-4-1` on low) |

---

## Scripts and Keybindings

- **[uosc](https://github.com/tomasklaen/uosc)**: Minimalist proximity-based UI.
- **[thumbfast](https://github.com/po5/thumbfast)**: Background thumbnail generator for timeline hover previews.
- **[evafast](https://github.com/po5/evafast)**: Hybrid seeking and fast-forwarding.
  - `→` (Press): Jump forward by 5s.
  - `→` (Hold): Fast-forward playback up to 2x speed.
- **[copyStuff](https://codeberg.org/raphaeltannous/mpv-copyStuff)**: Copy playback data to system clipboard.
  - `Ctrl` + `t`: Timestamp
  - `Ctrl` + `Shift` + `t`: Media title
  - `Ctrl` + `f`: Filename / URL
  - `Ctrl` + `p`: Full file path
  - `Ctrl` + `s`: Currently displayed subtitle text
  - `Ctrl` + `d`: Video duration
  - `Ctrl` + `m`: Metadata

## Sources & Credits

- **Scripts**:
  - [copyStuff](https://codeberg.org/raphaeltannous/mpv-copyStuff)
  - [evafast](https://github.com/po5/evafast)
  - [thumbfast](https://github.com/po5/thumbfast)
  - [uosc](https://github.com/tomasklaen/uosc)
- **Shaders**:
  - [CAS-scaled](https://gist.github.com/agyild/bbb4e58298b2f86aa24da3032a0d2ee6)
  - [FSR](https://gist.github.com/agyild/82219c545228d70c5604f865ce0b0ce5)
  - [FSRCNNX](https://github.com/igv/FSRCNN-TensorFlow)
  - [KrigBilateral](https://gist.github.com/igv/a015fc885d5c22e6891820ad89555637)
  - [SSimDownscaler](https://gist.github.com/igv/36508af3ffc84410fe39761d6969be10)
