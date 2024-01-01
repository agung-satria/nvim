return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.5",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope-live-grep-args.nvim",
    -- "debugloop/telescope-undo.nvim", -- adding undo
    -- "nvim-telescope/telescope-file-browser.nvim", -- adding2
    "nvim-telescope/telescope-ui-select.nvim", -- adding3
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    local select_one_or_multi = function(prompt_bufnr)
      local picker = require('telescope.actions.state').get_current_picker(prompt_bufnr)
      local multi = picker:get_multi_selection()
      if not vim.tbl_isempty(multi) then
        require('telescope.actions').close(prompt_bufnr)
        for _, j in pairs(multi) do
          if j.path ~= nil then
            vim.cmd(string.format("%s %s", "edit", j.path))
          end
        end
      else
        require('telescope.actions').select_default(prompt_bufnr)
      end
    end

    telescope.setup({
      defaults = {
        path_display = { "truncate" },
        prompt_prefix = " ",
        selection_caret = " ",
        sorting_strategy = "ascending",
        winblend = 0,
        mappings = {
          i = {
            ["<C-j>"] = actions.move_selection_next,
            ["<C-k>"] = actions.move_selection_previous,
            ["<C-n>"] = actions.move_selection_next,
            ["<C-p>"] = actions.move_selection_previous,
            ["<Tab>"] = actions.move_selection_next,
            ["<S-Tab>"] = actions.move_selection_previous,
            -- ["<C-n>"] = actions.cycle_history_next,
            -- ["<C-p>"] = actions.cycle_history_prev,
            ["jk"] = actions.close,
            ["<cr>"] = select_one_or_multi,
            ["<C-w>"] = actions.send_selected_to_qflist + actions.open_qflist,
            ["<C-S-d>"] = actions.delete_buffer,
          },
        },
      },
      extensions = {
      --   undo = { -- adding undo
      --     use_delta = true,
      --     use_custom_command = nil, -- setting this implies `use_delta = false`. Accepted format is: { "bash", "-c", "echo '$DIFF' | delta" }
      --     side_by_side = false,
      --     diff_context_lines = vim.o.scrolloff,
      --     entry_format = "state #$ID, $STAT, $TIME",
      --     mappings = {
      --       i = {
      --         ["<C-r>"] = require("telescope-undo.actions").restore,
      --         ["<C-cr>"] = require("telescope-undo.actions").yank_additions,
      --         ["<C-y>"] = require("telescope-undo.actions").yank_deletions,
      --       },
      --     },
      --   },
      --   -- other extensions:
      --   -- file_browser = { ... }
        ["ui-select"] = { --adding3
          require("telescope.themes").get_dropdown{}
        }
      },
      require("telescope").load_extension("live_grep_args"),

      -- require("telescope").load_extension("undo"), -- adding undo
      -- vim.keymap.set("n", "<leader>u", "<cmd>Telescope undo<cr>", { desc = "Undo history" })

      -- require("telescope").load_extension("file_browser"), -- adding2
      -- vim.keymap.set("n", "<leader>fB", "<cmd>Telescope file_browser path=%:p:h=%:p:h<cr><cr>", { desc = "Telescope File Browser" })

      require("telescope").load_extension("ui-select"), --adding3
    })

    local builtin = require("telescope.builtin")
    vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find Files" })
    vim.keymap.set("n", "<C-p>", builtin.find_files, { desc = "Find Files" })
    vim.keymap.set("n", "<leader>fg", "<cmd>lua require('telescope').extensions.live_grep_args.live_grep_args()<cr>", { desc = "Live Grep Args" })
    vim.keymap.set("n", "<leader>fc",'<cmd>lua require("telescope.builtin").live_grep({ glob_pattern = "!{spec,test}"})<cr>', { desc = "Live Grep Code" })
    vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Find Buffers" })
    vim.keymap.set("n", "<leader>b", builtin.buffers, { desc = "Find Buffers" })
    vim.keymap.set("n", "<leader><Tab>", builtin.buffers, { desc = "Find Buffers" })
    vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Find Help Tags" })
    vim.keymap.set("n", "<leader>fs", builtin.lsp_document_symbols, { desc = "Find Symbols" })
    vim.keymap.set("n", "<leader>fo", builtin.oldfiles, { desc = "Find Old Files" })
    vim.keymap.set("n", "<leader>fr", builtin.resume, { desc = "Resume telescope last search" })
    vim.keymap.set("n", "<leader>fw", builtin.grep_string, { desc = "Find Word under Cursor" })
    vim.keymap.set("n", "<leader>gc", builtin.git_commits, { desc = "Search Git Commits" })
    vim.keymap.set("n", "<leader>gb", builtin.git_bcommits, { desc = "Search Git Commits for Buffer" })
  end,
}
