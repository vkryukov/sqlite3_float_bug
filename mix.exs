defmodule SqliteFloatBug.MixProject do
  use Mix.Project

  def project do
    [
      app: :sqlite_float_bug,
      version: "0.1.0",
      elixir: "~> 1.18",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      mod: {SqliteFloatBug.Application, []},
      extra_applications: [:logger, :ecto_sqlite3]
    ]
  end

  defp deps do
    [
      {:ecto_sqlite3, "~> 0.17"}
    ]
  end
end