require 'test_helper'

class PostsControllerTest < ActionController::TestCase
  include Devise::Test::ControllerHelpers

  setup do
    @post = posts(:one)
  end

  test "logged user should get index" do
    user = users(:one)
    sign_in(user)
    get :index
    assert_response :success
    assert_not_nil assigns(:posts)
  end

  test "non logged user shouldnt get index" do
    get :index
    assert_response :redirect
  end

  test "logged user should get new" do
    user = users(:one)
    sign_in(user)
    get :new
    assert_response :success
  end

  test "unlogged user shouldnt get new" do
    get :new
    assert_response :redirect
  end

  ### ------ Create posts -------- ###
  test "logged user should create post" do
    user = users(:one)
    sign_in(user)
    assert_difference('Post.count') do
      post :create, post: { content: @post.content, name: @post.name }
    end

    assert_redirected_to post_path(assigns(:post))
  end

  test "unlogged user should create post" do
    post :create, post: { content: @post.content, name: @post.name }
    assert_response :redirect
  end

  ### ------ Show posts -------- ###
  test "logged user should show post" do
    user = users(:one)
    sign_in(user)

    get :show, id: @post
    assert_response :success
  end

  test "unlogged user shouldnt show post" do
    get :show, id: @post
    assert_response :redirect
  end

  ### ------ Edit posts -------- ###
  test "logged user should get edit" do
    user = users(:one)
    sign_in(user)

    get :edit, id: @post
    assert_response :success
  end

  test "unlogged user shouldnt get edit" do
    get :edit, id: @post
    assert_response :redirect
  end

  ### ------ Update posts -------- ###
  test "logged user should update post" do
    user = users(:one)
    sign_in(user)

    patch :update, id: @post, post: { content: @post.content, name: @post.name }
    assert_redirected_to post_path(assigns(:post))
  end

  test "unlogged user should update post" do
    patch :update, id: @post, post: { content: @post.content, name: @post.name }
    assert_response :redirect
  end

  ### ------ Destroy posts -------- ###
  test "logged user should destroy post" do
    user = users(:one)
    sign_in(user)

    assert_difference('Post.count', -1) do
      delete :destroy, id: @post
    end

    assert_redirected_to posts_path
  end

  test "unlogged user should destroy post" do
    assert_difference('Post.count', 0) do
      delete :destroy, id: @post
    end

    assert_response :redirect
  end
end
