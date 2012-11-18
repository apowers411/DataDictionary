require 'test_helper'

class DatatableDataelementsControllerTest < ActionController::TestCase
  setup do
    @datatable_dataelement = datatable_dataelements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:datatable_dataelements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create datatable_dataelement" do
    assert_difference('DatatableDataelement.count') do
      post :create, datatable_dataelement: { dataelement_id: @datatable_dataelement.dataelement_id, datatable_id: @datatable_dataelement.datatable_id }
    end

    assert_redirected_to datatable_dataelement_path(assigns(:datatable_dataelement))
  end

  test "should show datatable_dataelement" do
    get :show, id: @datatable_dataelement
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @datatable_dataelement
    assert_response :success
  end

  test "should update datatable_dataelement" do
    put :update, id: @datatable_dataelement, datatable_dataelement: { dataelement_id: @datatable_dataelement.dataelement_id, datatable_id: @datatable_dataelement.datatable_id }
    assert_redirected_to datatable_dataelement_path(assigns(:datatable_dataelement))
  end

  test "should destroy datatable_dataelement" do
    assert_difference('DatatableDataelement.count', -1) do
      delete :destroy, id: @datatable_dataelement
    end

    assert_redirected_to datatable_dataelements_path
  end
end
