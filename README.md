## Jason.Neovim.Config.Mac

My settings for neovim for Ruby on Rails development.

Credit where it is due. I have borrowed heavily from the following source: Th blog of [Josean Martinez](https://www.josean.com/posts/how-to-setup-neovim-2024.)  If you want to know what many of the plugins do, I suggest reading this post.  I have made some changes to fit my flows but you will get the gist.

## Installation
Clone this repo to your home directory.
```bash
git clone git@github.com:JasonKretzer/Jason.Neovim.Config.Mac.git
```
Go into the Jason.Neovim.Config.Mac directory
```bash
cd Jason.Neovim.Config.Mac
```
Copy the nvim directory into your .config directory
```bash
cp -r nvim ~/.config
```

Note that I have copilot set up but I do not provide the package for it.  You will have to configure it yourself using the instructions [here](https://docs.github.com/en/copilot/using-github-copilot/getting-code-suggestions-in-your-ide-with-github-copilot?tool=vimneovim).  Until you set it up, you will want to comment out the appropriate line in `~/.config/lua/lazy-settings/plugins/init.lua`
```lua
return {
  "nvim-lua/plenary.nvim",          -- lua functions that many plugins use
  "christoomey/vim-tmux-navigator", -- tmux & split window navigation
 -- "github/copilot.vim",             -- github copilot
}
```

## My Most Used Keymaps
My leader key is a comma (,), so when you see <leader> it means press comma.  You will run most of these in NORMAL mode unless otherwise stated.

Toggle the file tree on/off
```
<leader>ee
```

Switch between splits
```
<leader><TAB>
```

Bring up Telescope to open files
```
<leader>ff
```

Bring up Telescope to switch between open buffers. **Note** that buffers also open as tabs across the top
```
<leader>fb
```

Bring up Telescope to search for a word across the entire current working directory.
```
<leader>fs
```

**MORE TO COME OF THESE**  There are a number of good ones.
