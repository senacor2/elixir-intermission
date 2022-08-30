defmodule ElixirIntermission.BlogTest do
  use ElixirIntermission.DataCase

  alias ElixirIntermission.Blog

  describe "post" do
    alias ElixirIntermission.Blog.Post

    import ElixirIntermission.BlogFixtures

    @invalid_attrs %{author: nil, content: nil, title: nil}

    test "list_post/0 returns all post" do
      post = post_fixture()
      assert Blog.list_post() == [post]
    end

    test "get_post!/1 returns the post with given id" do
      post = post_fixture()
      assert Blog.get_post!(post.id) == post
    end

    test "create_post/1 with valid data creates a post" do
      valid_attrs = %{author: "some author", content: "some content", title: "some title"}

      assert {:ok, %Post{} = post} = Blog.create_post(valid_attrs)
      assert post.author == "some author"
      assert post.content == "some content"
      assert post.title == "some title"
    end

    test "create_post/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Blog.create_post(@invalid_attrs)
    end

    test "update_post/2 with valid data updates the post" do
      post = post_fixture()
      update_attrs = %{author: "some updated author", content: "some updated content", title: "some updated title"}

      assert {:ok, %Post{} = post} = Blog.update_post(post, update_attrs)
      assert post.author == "some updated author"
      assert post.content == "some updated content"
      assert post.title == "some updated title"
    end

    test "update_post/2 with invalid data returns error changeset" do
      post = post_fixture()
      assert {:error, %Ecto.Changeset{}} = Blog.update_post(post, @invalid_attrs)
      assert post == Blog.get_post!(post.id)
    end

    test "delete_post/1 deletes the post" do
      post = post_fixture()
      assert {:ok, %Post{}} = Blog.delete_post(post)
      assert_raise Ecto.NoResultsError, fn -> Blog.get_post!(post.id) end
    end

    test "change_post/1 returns a post changeset" do
      post = post_fixture()
      assert %Ecto.Changeset{} = Blog.change_post(post)
    end
  end
end
