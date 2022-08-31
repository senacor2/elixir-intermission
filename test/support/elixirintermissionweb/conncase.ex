defmodule ElixirIntermissionWeb.ConnCase do
  use ExUnit.CaseTemplate

  using do
    quote do
      # Import conveniences for testing with connections
      import Plug.Conn
      import Phoenix.ConnTest
      alias ElixirIntermissionWeb.Router.Helpers, as: Routes

      # The default endpoint for testing
      @endpoint ElixirIntermissionWeb.Endpoint
    end
  end

  setup tags do
    pid = Ecto.Adapters.SQL.Sandbox.start_owner!(ElixirIntermission.Repo, shared: not tags[:async])
    on_exit(fn -> Ecto.Adapters.SQL.Sandbox.stop_owner(pid) end)
    %{conn: Phoenix.ConnTest.build_conn()}
  end
end
