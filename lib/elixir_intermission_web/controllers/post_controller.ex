defmodule ElixirIntermissionWeb.PostController do
  use ElixirIntermissionWeb, :controller

  alias ElixirIntermission.Repo
  alias ElixirIntermission.Blog.Post

  def index(conn, _params) do
    posts = Repo.all(Post)
    render(conn, "index.html", posts: posts)
  end
end
