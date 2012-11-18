require 'test_helper'

class DataelementsControllerTest < ActionController::TestCase
  setup do
    @dataelement = dataelements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dataelements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dataelement" do
    assert_difference('Dataelement.count') do
      post :create, dataelement: { analysistype: @dataelement.analysistype, comments: @dataelement.comments, datatype: @dataelement.datatype, description: @dataelement.description, devname: @dataelement.devname, devtable: @dataelement.devtable, format: @dataelement.format, in_house_formula: @dataelement.in_house_formula, originalname: @dataelement.originalname, recode: @dataelement.recode }
    end

    assert_redirected_to dataelement_path(assigns(:dataelement))
  end

  test "should show dataelement" do
    get :show, id: @dataelement
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dataelement
    assert_response :success
  end

  test "should update dataelement" do
    put :update, id: @dataelement, dataelement: { analysistype: @dataelement.analysistype, comments: @dataelement.comments, datatype: @dataelement.datatype, description: @dataelement.description, devname: @dataelement.devname, devtable: @dataelement.devtable, format: @dataelement.format, in_house_formula: @dataelement.in_house_formula, originalname: @dataelement.originalname, recode: @dataelement.recode }
    assert_redirected_to dataelement_path(assigns(:dataelement))
  end

  test "should destroy dataelement" do
    assert_difference('Dataelement.count', -1) do
      delete :destroy, id: @dataelement
    end

    assert_redirected_to dataelements_path
  end
end
