return {
  --- I would recommend installing yaml-language-server with npm, stumbled upon some issues with yarn, $ npm i -g yaml-language-server
  cmd = { 'yaml-language-server', '--stdio' },
  filetypes = { 'yaml', 'yaml.docker-compose', 'yaml.gitlab', 'yaml.helm-values' },
  root_markers = { '.git' },
  settings = {
    redhat = { telemetry = { enabled = false } },
    yaml = {
        format = {
            enable = true,
        },
        schemaStore = {
            enable = true,
            url = 'https://www.schemastore.org/api/json/catalog.json',
        },
        schemas = {
            ['/home/sc/repos/whimsical/resources/schemas/whimsical.yaml'] = 'wh_config_*.yaml',
        },
    },

  },
  on_init = function(client)
    client.server_capabilities.documentFormattingProvider = true
  end,
}
