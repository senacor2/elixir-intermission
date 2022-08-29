defmodule ElixirIntermissionWeb.PageController do
  use ElixirIntermissionWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
