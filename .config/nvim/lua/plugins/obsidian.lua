local vault = vim.fn.expand("~") .. "/unpublished"
local prefix = "<leader>o"

return {
  {
    "epwalsh/obsidian.nvim",

    version = "*", -- recommended, use latest release instead of latest commit
    lazy = false,

    event = {
      "BufReadPre " .. vault .. "/**.md",
      "BufNewFile " .. vault .. "/**.md",
    },

    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
    },

    keys = {
      { prefix .. "f", "<cmd>ObsidianQuickSwitch<CR>", desc = "Find" },
      { prefix .. "t", "<cmd>ObsidianToday<CR>", desc = "Today" },
      { prefix .. "n", "<cmd>ObsidianNew<CR>", desc = "New note" },
      { prefix .. "s", "<cmd>ObsidianSearch<CR>", desc = "ObsidianSearch" },
    },

    opts = {
      workspaces = {
        {
          name = "unpublished",
          path = vault,
        },
      },

      completion = {
        -- Set to false to disable completion.
        nvim_cmp = true,
        -- Trigger completion at 1 chars.
        min_chars = 1,
      },

      daily_notes = { folder = "journal" },

      picker = { name = "telescope.nvim" },

      notes_subdir = "inbox",
      new_notes_location = "notes_subdir",

      wiki_link_func = "use_alias_only",

      -- Optional, by default when you use `:ObsidianFollowLink` on a link to an external
      -- URL it will be ignored but you can customize this behavior here.
      ---@param url string
      follow_url_func = function(url)
        -- Open the URL in the default web browser.
        vim.fn.jobstart({ "open", url }) -- Mac OS
      end,

      -- Optional, alternatively you can customize the frontmatter data.
      ---@return table
      note_frontmatter_func = function(note)
        -- -- Add the title of the note as an alias.
        -- if note.title then
        --   note:add_alias(note.title)
        -- end

        local out = {}

        -- `note.metadata` contains any manually added fields in the frontmatter.
        -- So here we just make sure those fields are kept in the frontmatter.
        if note.metadata ~= nil and not vim.tbl_isempty(note.metadata) then
          for k, v in pairs(note.metadata) do
            out[k] = v
          end
        end

        return out
      end,
    },
  },
}
