defmodule ElixirIntermission.Blog.Post do
  use Ecto.Schema
  import Ecto.Changeset

  schema "post" do
    field :author, :string
    field :content, :string
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(post, attrs) do
    post
    |> cast(attrs, [:title, :content, :author])
    |> validate_required([:title, :content, :author])
  end
end
