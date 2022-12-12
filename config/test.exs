import Config

config :todo, Todo.Repo,
  database: "todo_repo",
  username: "postgres",
  password: "bharat632@",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
