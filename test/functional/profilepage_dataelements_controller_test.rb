require 'test_helper'

class ProfilepageDataelementsControllerTest < ActionController::TestCase
  setup do
    @profilepage_dataelement = profilepage_dataelements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:profilepage_dataelements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create profilepage_dataelement" do
    assert_difference('ProfilepageDataelement.count') do
      post :create, profilepage_dataelement: { comments: @profilepage_dataelement.comments, dataelement_id: @profilepage_dataelement.dataelement_id, devformula: @profilepage_dataelement.devformula, lastupdated: @profilepage_dataelement.lastupdated, profilepage_id: @profilepage_dataelement.profilepage_id }
    end

    assert_redirected_to profilepage_dataelement_path(assigns(:profilepage_dataelement))
  end

  test "should show profilepage_dataelement" do
    get :show, id: @profilepage_dataelement
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @profilepage_dataelement
    assert_response :success
  end

  test "should update profilepage_dataelement" do
    put :update, id: @profilepage_dataelement, profilepage_dataelement: { comments: @profilepage_dataelement.comments, dataelement_id: @profilepage_dataelement.dataelement_id, devformula: @profilepage_dataelement.devformula, lastupdated: @profilepage_dataelement.lastupdated, profilepage_id: @profilepage_dataelement.profilepage_id }
    assert_redirected_to profilepage_dataelement_path(assigns(:profilepage_dataelement))
  end

  test "should destroy profilepage_dataelement" do
    assert_difference('ProfilepageDataelement.count', -1) do
      delete :destroy, id: @profilepage_dataelement
    end

    assert_redirected_to profilepage_dataelements_path
  end
end
