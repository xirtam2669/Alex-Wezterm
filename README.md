<h2 align="center">My WezTerm Config</h2>
### Features

- [**Background Image Selector**](https://github.com/xirtam2669/Wezterm-Config/blob/master/utils/backdrops.lua)

  - Cycle images
  - Fuzzy search for image
  - Toggle background image

  > See: [key bindings](#background-images) for usage

- [**GPU Adapter Selector**](https://github.com/xirtam2669/Wezterm-Config/blob/master/utils/gpu_adapter.lua)

  > :bulb: Only works if the [`front_end`](https://github.com/xirtam2669/Wezterm-Config/blob/master/config/appearance.lua#L8) option is set to `WebGpu`.

  A small utility to select the best GPU + Adapter (graphics API) combo for your machine.

  GPU + Adapter combo is selected based on the following criteria:

  1.  <details>
      <summary>Best GPU available</summary>

      `Discrete` > `Integrated` > `Other` (for `wgpu`'s OpenGl implementation on Discrete GPU) > `Cpu`
      </details>

  2.  <details>
      <summary>Best graphics API available (based off my very scientific scroll a big log file in Neovim test 😁)</summary>

      > :bulb:<br>
      > The available graphics API choices change based on your OS.<br>
      > These options correspond to the APIs the `wgpu` crate (which powers WezTerm's gui in `WebGpu` mode)<br>
      > currently has support implemented for.<br>
      > See: <https://github.com/gfx-rs/wgpu#supported-platforms> for more info

      - Windows: `Dx12` > `Vulkan` > `OpenGl`
      - Linux: `Vulkan` > `OpenGl`
      - Mac: `Metal`

      </details>

---

### Getting Started

- ##### Requirements:

  - <details>
      <summary><b>WezTerm</b></summary>

    Minimum Version: `20240127-113634-bbcac864`<br>
    Recommended Version: [`Nightly`](https://github.com/wez/wezterm/releases/nightly)

    [Official Installation Page](https://wezfurlong.org/wezterm/installation.html)

    **Linux**

    Refer to the Linux installation page.<br>
    <https://wezfurlong.org/wezterm/install/linux.html>
    </details>

- ##### Steps:

  1.  ```sh
      # On Windows and Unix systems
      git clone https://github.com/xirtam2669/Wezterm-Config.git ~/.config/wezterm
      ```
  2. You may need to install fonts:
    * https://www.nerdfonts.com/font-downloads
      Create a ~/.fonts or ~/.local/share/fonts directory (if it doesn't already exist):
  ```bash
      mkdir -p ~/.local/share/fonts
  ```    
      Then copy the .ttf or .otf files there:
  ```bash    
      cp ~/Downloads/JetBrainsMonoNerdFont-Medium.ttf ~/.local/share/fonts/
  ```    
      Then refresh the font cache:

fc-cache -fv
  2.  And Done!!! 🎉🎉

- ##### Things You Might Want to Change:

  - [./config/domains.lua](./config/domains.lua) for custom SSH/WSL domains
  - [./config/launch.lua](./config/launch.lua) for preferred shells and its paths

---
