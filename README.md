# D6's NVIM Config
I'm trying to become a VIM person, and easing myself in by progressively building a neovim config. This file has my notes-to-self. 

## Loading Order


Neovim always starts here.
`~/.config/nvim/init.lua`

It contains a single call which requires in a folder. Nvim searches `lua/` on runtime so this would resolve to `./lua/davidasix`:
```lua
require("davidasix")
```

This finds the init file in that folder if it exists `lua/davidasix/init.lua`

At time of writting, that afile looks like:
```
   1   │ vim.g.mapleader = " " -- Set leader key before Lazy
   2   │ require("davidasix.init_lazy.)
   3   │ require("davidasix.remapper")
   4   │ 
   5   │ vim.cmd.colorscheme("tokyonight")
```

### Load Chain

```
init.lua
  └── lua/davidasix/init.lua
        ├── vim.g.mapleader = " "          -- set leader before anything else
        ├── require("davidasix.init_lazy.) -- bootstrap Lazy + options + plugins
        ├── require("davidasix.remapper")  -- keymaps
        └── vim.cmd.colorscheme(...)       -- apply theme
```


## File-by-file

| File | Purpose |
|---|---|
| `init.lua` | Entry point; delegates everything to `davidasix` module |
| `lua/davidasix/init.lua` | Sets leader, loads init_lazy. remapper, then activates colorscheme |
| `lua/davidasix/init_lazy.lua` | Bootstraps lazy.nvim (clones it if missing), sets `relativenumber`, hands control to Lazy with `spec = "davidasix.lazy"` |
| `lua/davidasix/remapper.lua` | Defines keymaps (`<leader>o` → Telescope find_files, `<leader>fg` → live_grep) |
| `lua/davidasix/lazy/tokyonight.lua` | Plugin spec — loaded eagerly (`lazy=false`, `priority=1000`) so it's available for the colorscheme call |
| `lua/davidasix/lazy/telescope.lua` | Plugin spec — Telescope + plenary dependency |
| `lua/davidasix/lazy/autopairs.lua` | Plugin spec — loaded lazily on `InsertEnter` |

## Definitions


### The Leader Key

Currently bound to <space> this key is the entry point for running commands from extensions.
ie in `command mode` I can press <space> then <o> to run telescope 

### Lazy

lazy.nvim (Lazy) is a plugin manager. It uses lazy loading, hence the name.
init_lazy.lua checks if the package manager exists and if it does not fetches the latest version. Then it adds the path to the package manager to the run time config and requires it.
In the require statement the lazy folder is pointed at, and that folder contains one file per package that is getting imported.
