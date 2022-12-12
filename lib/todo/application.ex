defmodule Todo.Application do

  use Application
  require Logger

  @impl true
  def start(_type, _args) do
    # port = Application.get_env(:Todo.Application, :cowboy_port, 2000)

    children = [
        Todo.Repo ,
        {Plug.Cowboy, scheme: :http, plug: Todo.Router, options: [port: 2000]},

    ]

    Logger.info "App Started..."
    opts = [strategy: :one_for_one, name: Todo.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
