local M = {}

function M.get(palette, config)
  return {
    DapBreakpoint = { fg = palette.red },
    DapBreakpointCondition = { fg = palette.red },
    DapLogPoint = { fg = palette.blue },
    DapStopped = { fg = palette.green, bold = true },
    DapBreakpointRejected = { fg = palette.base5 },
  }
end

return M
