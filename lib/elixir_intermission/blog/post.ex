defmodule ElixirIntermission.Blog.Post do
  use Ecto.Schema

  schema "posts" do
    field :title, :string
    field :content, :string
    field :author, :string
  end
end
