defmodule SqliteFloatBug.Repo do
  use Ecto.Repo, otp_app: :sqlite_float_bug, adapter: Ecto.Adapters.SQLite3
end
