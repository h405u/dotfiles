return {
  "gsuuon/model.nvim",
  enabled = false,
  cmd = { "Model", "Mchat" },
  init = function()
    vim.filetype.add({ extension = { mchat = "mchat" } })
  end,
  ft = "mchat",
  keys = { { "<leader>h", ":Model<cr>", mode = "v" } },
  config = function()
    local volcengin = require("model.providers.deepseek")
    -- local util = require("model.util")
    require("model").setup({
      hl_group = "Substitute",
      -- prompts = util.module.autoload("prompt_library"),
      default_prompt = {
        provider = volcengin,
        options = {
          url = "https://ark.cn-beijing.volces.com/api/v3/",
          authorization = "Bearer 2f5059d2-92ff-4598-911a-caa8350b580a",
        },
        builder = function(input)
          return {
            model = "deepseek-v3-241226",
            -- temperature = 0.3,
            -- max_tokens = 400,
            messages = {
              {
                role = "system",
                content = "You are helpful assistant.",
              },
              { role = "user", content = input },
            },
          }
        end,
      },
    })
  end,
}
