defmodule ElixirIntermission.Repo.Migrations.AddImageToPost do
  use Ecto.Migration

  def change do
    alter table(:post) do
      add :image_ref, :string
    end
  end
end
