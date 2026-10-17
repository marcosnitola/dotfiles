return {
  {
    "mfussenegger/nvim-jdtls",

    -- opts = function(_, opts)
    --   -- Obtener MAVEN_ARGS del entorno, con valor por defecto vacío
    --   local maven_args = vim.env.MAVEN_ARGS or ""
    --
    --   -- Convertir el string de MAVEN_ARGS en una tabla de argumentos
    --   local function parse_maven_args(args_str)
    --     local args = {}
    --     for arg in args_str:gmatch("%S+") do
    --       table.insert(args, arg)
    --     end
    --     return args
    --   end
    --
    --   opts.settings = vim.tbl_deep_extend("force", opts.settings or {}, {
    --     java = {
    --       configuration = {
    --         maven = {
    --           globalSettings = vim.fn.expand("~/.m2/settings.xml"), -- opcional
    --         },
    --       },
    --       import = {
    --         maven = {
    --           enabled = true,
    --         },
    --       },
    --     },
    --   })
    --
    --   -- Pasar MAVEN_ARGS como vmArgs al proceso de build
    --   opts.init_options = vim.tbl_deep_extend("force", opts.init_options or {}, {
    --     bundles = opts.init_options and opts.init_options.bundles or {},
    --   })
    --
    --   -- Configurar variables de entorno para el proceso jdtls
    --   opts.cmd_env = vim.tbl_extend("force", opts.cmd_env or {}, {
    --     MAVEN_ARGS = maven_args,
    --     JAVA_TOOL_OPTIONS = table.concat(parse_maven_args(maven_args), " "),
    --   })
    --
    --   return opts
    -- end,
  },
}
