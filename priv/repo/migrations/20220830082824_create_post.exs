defmodule ElixirIntermission.Repo.Migrations.CreatePost do
  use Ecto.Migration

  def change do
    create table(:post) do
      add :title, :string
      add :content, :text
      add :author, :string

      timestamps()
    end
  end
end
