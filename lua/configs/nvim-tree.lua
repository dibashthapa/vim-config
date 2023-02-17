local M = {}

function M.config()
  local status_ok, nvimtree = pcall(require, "nvim-tree")
  if not status_ok then
    return
  end

  local g = vim.g
  g.loaded_netrw = 1
  g.loaded_netrwPlugin = 1


  nvimtree.setup({
    sort_by = "case_sensitive",
    view = {
      width = 30,
      mappings = {
        list = {
          { key = "u", action = "dir_up" },
        },
      },
    },
    renderer = {
      group_empty = true,
    },
    filters = {
      dotfiles = true,
    },
  })


  --[[ nvimtree.setup { ]]
  --[[   filters = { ]]
  --[[     dotfiles = false, ]]
  --[[     custom = { ]]
  --[[       ".git", ]]
  --[[       "node_modules", ]]
  --[[       ".cache", ]]
  --[[     }, ]]
  --[[   }, ]]
  --[[   disable_netrw = true, ]]
  --[[   hijack_netrw = true, ]]
  --[[   ignore_ft_on_setup = { ]]
  --[[     "dashboard", ]]
  --[[     "startify", ]]
  --[[     "alpha", ]]
  --[[   }, ]]
  --[[   open_on_tab = false, ]]
  --[[   hijack_cursor = true, ]]
  --[[   update_cwd = true, ]]
  --[[   update_focused_file = { ]]
  --[[     enable = true, ]]
  --[[     update_cwd = true, ]]
  --[[     ignore_list = {}, ]]
  --[[   }, ]]
  --[[   diagnostics = { ]]
  --[[     enable = false, ]]
  --[[     icons = { ]]
  --[[       hint = "", ]]
  --[[       info = "", ]]
  --[[       warning = "", ]]
  --[[       error = "", ]]
  --[[     }, ]]
  --[[   }, ]]
  --[[   view = { ]]
  --[[     width = 25, ]]
  --[[     side = "left", ]]
  --[[     hide_root_folder = false, ]]
  --[[     number = false, ]]
  --[[     relativenumber = false, ]]
  --[[     signcolumn = "yes", ]]
  --[[   }, ]]
  --[[   git = { ]]
  --[[     enable = true, ]]
  --[[     ignore = false, ]]
  --[[     timeout = 500, ]]
  --[[   }, ]]
  --[[   renderer = { ]]
  --[[     indent_markers = { ]]
  --[[       enable = true ]]
  --[[     }, ]]
  --[[     icons = { ]]
  --[[       show = { ]]
  --[[         git = true, ]]
  --[[         folder = true, ]]
  --[[         file = true, ]]
  --[[         folder_arrow = true, ]]
  --[[       }, ]]
  --[[       glyphs = { ]]
  --[[         default = "", ]]
  --[[         symlink = "", ]]
  --[[         git = { ]]
  --[[           deleted = "", ]]
  --[[           ignored = "◌", ]]
  --[[           renamed = "➜", ]]
  --[[           staged = "✓", ]]
  --[[           unmerged = "", ]]
  --[[           unstaged = "✗", ]]
  --[[           untracked = "★", ]]
  --[[         }, ]]
  --[[         folder = { ]]
  --[[           default = "", ]]
  --[[           empty = "", ]]
  --[[           empty_open = "", ]]
  --[[           open = "", ]]
  --[[           symlink = "", ]]
  --[[           symlink_open = "", ]]
  --[[         }, ]]
  --[[]]
  --[[       } ]]
  --[[     } ]]
  --[[   }, ]]
  --[[ } ]]
end

return M
