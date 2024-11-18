local vault = vim.fn.expand("~") .. "/Library/Mobile Documents/iCloud~md~obsidian/Documents/unpublished"
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
      { prefix .. "b", "<cmd>ObsidianBacklinks<CR>", desc = "ObsidianBacklinks" },
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

      daily_notes = {
        -- Optional, if you keep daily notes in a separate directory.
        folder = "journals",
        -- Optional, if you want to change the date format for the ID of daily notes.
        date_format = "%Y-%m-%d",
        -- Optional, if you want to change the date format of the default alias of daily notes.
        alias_format = "%B %-d, %Y",
        -- Optional, if you want to automatically insert a template from your template directory like 'daily.md'
        template = nil,
      },

      picker = { name = "telescope.nvim" },

      notes_subdir = "inbox",
      new_notes_location = "notes_subdir",

      wiki_link_func = "prepend_note_id",

      -- Optional, by default when you use `:ObsidianFollowLink` on a link to an external
      -- URL it will be ignored but you can customize this behavior here.
      ---@param url string
      follow_url_func = function(url)
        -- Open the URL in the default web browser.
        vim.fn.jobstart({ "open", url }) -- Mac OS
      end,

      -- Optional, customize how note IDs are generated given an optional title.
      ---@param title string|?
      ---@return string
      note_id_func = function(title)
        -- Create note IDs in a Zettelkasten format with a timestamp and a suffix.
        -- In this case a note with the title 'My new note' will be given an ID that looks
        -- like '1657296016-my-new-note', and therefore the file name '1657296016-my-new-note.md'
        local suffix = ""
        if title ~= nil then
          -- If title is given, transform it into valid file name.
          suffix = title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
        else
          -- If title is nil, just add 4 random uppercase letters to the suffix.
          for _ = 1, 4 do
            suffix = suffix .. string.char(math.random(65, 90))
          end
        end
        return suffix
      end,

      -- Optional, alternatively you can customize the frontmatter data.
      ---@return table
      note_frontmatter_func = function(note)
        -- -- Add the title of the note as an alias.
        if note.title then
          note:add_alias(note.title)
        end
        local out = { id = note.id, aliases = note.aliases, tags = note.tags }
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
