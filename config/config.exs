import Config

config :trash_support, ecto_repos: [TrashSupport.CitusRepo, TrashSupport.PlainPostgresRepo]

config :trash_support, TrashSupport.CitusRepo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "postgres",
  port: 5433,
  show_sensitive_data_on_connection_error: true,
  pool_size: 10

config :trash_support, TrashSupport.PlainPostgresRepo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "postgres",
  port: 5434,
  show_sensitive_data_on_connection_error: true,
  pool_size: 10

import_config("#{config_env()}.exs")
