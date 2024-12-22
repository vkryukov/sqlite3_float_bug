import Config

config :sqlite_float_bug,
  ecto_repos: [SqliteFloatBug.Repo]

config :sqlite_float_bug, SqliteFloatBug.Repo, database: "db.sqlite3"
