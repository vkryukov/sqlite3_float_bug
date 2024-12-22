defmodule Repo.Migrations.CreateTemperaturesTable do
  use Ecto.Migration

  def change do
    create table(:temperatures) do
      add :temperature, :float, null: false

      timestamps()
    end
  end
end