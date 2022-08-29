defmodule ElixirIntermission.Repo do
  use Ecto.Repo,
    otp_app: :elixir_intermission,
    adapter: Ecto.Adapters.Postgres
end
