require 'test_helper'

class DatatablesControllerTest < ActionController::TestCase
  setup do
    @datatable = datatables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:datatables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create datatable" do
    assert_difference('Datatable.count') do
      post :create, datatable: { datasource_id: @datatable.datasource_id, importdetail: @datatable.importdetail, location: @datatable.location, name: @datatable.name, year: @datatable.year }
    end

    assert_redirected_to datatable_path(assigns(:datatable))
  end

  test "should show datatable" do
    get :show, id: @datatable
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @datatable
    assert_response :success
  end

  test "should update datatable" do
    put :update, id: @datatable, datatable: { datasource_id: @datatable.datasource_id, importdetail: @datatable.importdetail, location: @datatable.location, name: @datatable.name, year: @datatable.year }
    assert_redirected_to datatable_path(assigns(:datatable))
  end

  test "should destroy datatable" do
    assert_difference('Datatable.count', -1) do
      delete :destroy, id: @datatable
    end

    assert_redirected_to datatables_path
  end
end
