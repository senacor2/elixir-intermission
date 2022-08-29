defmodule ElixirIntermission.Repo.Migrations.CreateBlog do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :title, :string, null: false
      add :content, :string, null: false
      add :author, :string, null: false
    end
  end
end
