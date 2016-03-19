require 'test_helper'

class SignPagesControllerTest < ActionController::TestCase
  setup do
    @sign_page = sign_pages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sign_pages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sign_page" do
    assert_difference('SignPage.count') do
      post :create, sign_page: { name: @sign_page.name }
    end

    assert_redirected_to sign_page_path(assigns(:sign_page))
  end

  test "should show sign_page" do
    get :show, id: @sign_page
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sign_page
    assert_response :success
  end

  test "should update sign_page" do
    patch :update, id: @sign_page, sign_page: { name: @sign_page.name }
    assert_redirected_to sign_page_path(assigns(:sign_page))
  end

  test "should destroy sign_page" do
    assert_difference('SignPage.count', -1) do
      delete :destroy, id: @sign_page
    end

    assert_redirected_to sign_pages_path
  end
end
