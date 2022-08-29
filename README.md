# ElixirIntermission

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * `podman run --name postgres-elixir -e POSTGRES_PASSWORD=postgres -p 5432:5432 -d --rm postgres`
  * Create and migrate your database with `mix ecto.setup`
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix

## Database
  * Ecto Docs: https://hexdocs.pm/ecto/Ecto.html
  * How To: https://elixirschool.com/en/lessons/ecto/basics
  * Create Migrations `mix ecto.gen.migration my_migration`
  * Run Migration `mix ecto.migrate`
  * Reset DB `mix ecto.reset`


## Routing
  * show routes and corresponding controller: `mix phx.routes`