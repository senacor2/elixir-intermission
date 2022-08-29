# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     ElixirIntermission.Repo.insert!(%ElixirIntermission.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias ElixirIntermission.Repo
alias ElixirIntermission.Blog.Post

Repo.delete_all(Post)
Repo.insert!(%Post{title: "Hallo Welt", content: "Hier ist der Content", author: "Jan"})
