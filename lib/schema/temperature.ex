defmodule Schema.Temperature do
  use Ecto.Schema
  import Ecto.Changeset

  schema "temperatures" do
    field :temperature, :float

    timestamps()
  end

  @doc """
  Creates a changeset for validating temperature records.

  ## Parameters
    - temperature: The temperature struct to validate
    - attrs: The attributes to validate

  Returns an Ecto.Changeset.
  """
  def changeset(temperature, attrs) do
    temperature
    |> cast(attrs, [:temperature])
    |> validate_required([:temperature])
    |> validate_number(:temperature, greater_than: -273.15) # Absolute zero in Celsius
  end
end