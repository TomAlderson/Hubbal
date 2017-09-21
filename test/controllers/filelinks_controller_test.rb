require 'test_helper'

class FilelinksControllerTest < ActionController::TestCase
  setup do
    @filelink = filelinks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:filelinks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create filelink" do
    assert_difference('Filelink.count') do
      post :create, filelink: { content_id: @filelink.content_id, link: @filelink.link, size: @filelink.size, type: @filelink.type }
    end

    assert_redirected_to filelink_path(assigns(:filelink))
  end

  test "should show filelink" do
    get :show, id: @filelink
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @filelink
    assert_response :success
  end

  test "should update filelink" do
    patch :update, id: @filelink, filelink: { content_id: @filelink.content_id, link: @filelink.link, size: @filelink.size, type: @filelink.type }
    assert_redirected_to filelink_path(assigns(:filelink))
  end

  test "should destroy filelink" do
    assert_difference('Filelink.count', -1) do
      delete :destroy, id: @filelink
    end

    assert_redirected_to filelinks_path
  end
end
