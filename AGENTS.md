# Repository Guide

## Configuration Model

- `init.lua` only bootstraps `lua/config/lazy.lua`; LazyVim then auto-loads `lua/config/options.lua` before startup and `keymaps.lua`/`autocmds.lua` on `VeryLazy`.
- Put plugin additions and LazyVim overrides in separate specs under `lua/plugins/`; every file there is imported automatically.
- `lazyvim.json` is the active LazyVim extras list. Change language/UI extras there rather than copying their upstream specs into this repo.
- `lua/plugins/example.lua` is inert because of its early `return {}`. It is reference material, not active configuration.
- Custom plugins are eager by default in `lua/config/lazy.lua`; add an explicit event, command, keys, or `lazy = true` when startup loading is not intended.

## Herdr Integration

- `lua/plugins/herdr-splits.lua` is enabled only when `HERDR_ENV=1`; `HERDR_BIN_PATH` is consumed by the plugin when it must locate the Herdr binary.
- Keep navigation and resize keys in the plugin's `nav_keys`/`resize_keys` setup fields as well as its Lazy key specs so generated Herdr-side configuration stays aligned.

## Verification

- Run `nvim --headless "+qa"` for the normal startup check.
- After changing Herdr integration, run `HERDR_ENV=1 nvim --headless "+Lazy! load herdr-splits.nvim" "+lua require('herdr-splits')" "+qa"`.
- There is no repository test, lint, or CI runner. Lua formatting follows `stylua.toml` (2 spaces, 120 columns); StyLua is not installed by this repository.
- Treat `lazy-lock.json` as Lazy's generated dependency lock. Keep its changes only when a plugin or pinned revision was intentionally changed.
