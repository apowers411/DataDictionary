require 'test_helper'

class ProfilepagesControllerTest < ActionController::TestCase
  setup do
    @profilepage = profilepages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:profilepages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create profilepage" do
    assert_difference('Profilepage.count') do
      post :create, profilepage: { description: @profilepage.description, tab: @profilepage.tab, url: @profilepage.url, vertical: @profilepage.vertical }
    end

    assert_redirected_to profilepage_path(assigns(:profilepage))
  end

  test "should show profilepage" do
    get :show, id: @profilepage
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @profilepage
    assert_response :success
  end

  test "should update profilepage" do
    put :update, id: @profilepage, profilepage: { description: @profilepage.description, tab: @profilepage.tab, url: @profilepage.url, vertical: @profilepage.vertical }
    assert_redirected_to profilepage_path(assigns(:profilepage))
  end

  test "should destroy profilepage" do
    assert_difference('Profilepage.count', -1) do
      delete :destroy, id: @profilepage
    end

    assert_redirected_to profilepages_path
  end
end
