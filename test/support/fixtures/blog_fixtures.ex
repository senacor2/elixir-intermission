defmodule ElixirIntermission.BlogFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `ElixirIntermission.Blog` context.
  """

  @doc """
  Generate a post.
  """
  def post_fixture(attrs \\ %{}) do
    {:ok, post} =
      attrs
      |> Enum.into(%{
        author: "some author",
        content: "some content",
        title: "some title",
        image_ref: ""
      })
      |> ElixirIntermission.Blog.create_post()

    post
  end
end
