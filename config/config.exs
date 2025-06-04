import Config

config :trash_support, ecto_repos: [TrashSupport.Repo]

config :trash_support, TrashSupport.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "postgres",
  port: 5432,
  show_sensitive_data_on_connection_error: true,
  pool_size: 10

import_config("#{config_env()}.exs")
