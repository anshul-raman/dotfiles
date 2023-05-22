return {
	settings = {
        gopls = {
          analyses = {
            unusedparams = true,
            unusedvariable = true,
            nilness = true
          },
          staticcheck = true,
          usePlaceholders = true,
          hints = {
            assignVariableTypes = true,
            compositeLiteralFields = true,
            compositeLiteralTypes = true,
            constantValues = true,
            functionTypeParameters = true,
            parameterNames = true,
            rangeVariableTypes = true
          }
        },
    },
}