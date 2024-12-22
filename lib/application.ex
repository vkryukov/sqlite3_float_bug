defmodule SqliteFloatBug.Application do
  use Application

  @impl true
  def start(_type, _args) do
    children = [
      SqliteFloatBug.Repo
    ]

    opts = [strategy: :one_for_one, name: SqliteFloatBug.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
