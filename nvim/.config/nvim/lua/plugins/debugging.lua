-- List of debug adapter: https://codeberg.org/mfussenegger/nvim-dap/wiki/Debug-Adapter-installation

return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "rcarriga/nvim-dap-ui",
    "nvim-neotest/nvim-nio",
    "mfussenegger/nvim-dap-python",
  },
  config = function()
    local dap, dapui = require("dap"), require("dapui")

    require("dapui").setup()
    require("dap-python").setup("python")

    -- C# / .NET
    dap.adapters.coreclr = {
      type = 'executable',
      command = '/usr/bin/netcoredbg',
      args = { '--interpreter=vscode' }
    }

    dap.configurations.cs = {
      {
        type = 'coreclr',
        name = 'Launch - .NET Core',
        request = 'launch',
        program = function()
          return vim.fn.input('Pfad zur DLL: ', vim.fn.getcwd() .. '/bin/Debug/net8.0/yourapp.dll', 'file')
        end,
      },
    }

    -- Automatic opening and closing of dap-ui
    dap.listeners.before.attach.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated.dapui_config = function()
      dapui.close()
    end
    dap.listeners.before.event_exited.dapui_config = function()
      dapui.close()
    end

    -- Keybindings
    vim.keymap.set("n", "<F5>", function()
      require("dap").continue()
    end)
    vim.keymap.set("n", "<F10>", function()
      require("dap").step_over()
    end)
    vim.keymap.set("n", "<F11>", function()
      require("dap").step_into()
    end)
    vim.keymap.set("n", "<F12>", function()
      require("dap").step_out()
    end)
    vim.keymap.set("n", "<F9>", dap.toggle_breakpoint, {})
  end,
}
