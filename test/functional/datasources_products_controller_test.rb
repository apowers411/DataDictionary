require 'test_helper'

class DatasourcesProductsControllerTest < ActionController::TestCase
  setup do
    @datasources_product = datasources_products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:datasources_products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create datasources_product" do
    assert_difference('DatasourcesProduct.count') do
      post :create, datasources_product: { datasource_id: @datasources_product.datasource_id, product_id: @datasources_product.product_id }
    end

    assert_redirected_to datasources_product_path(assigns(:datasources_product))
  end

  test "should show datasources_product" do
    get :show, id: @datasources_product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @datasources_product
    assert_response :success
  end

  test "should update datasources_product" do
    put :update, id: @datasources_product, datasources_product: { datasource_id: @datasources_product.datasource_id, product_id: @datasources_product.product_id }
    assert_redirected_to datasources_product_path(assigns(:datasources_product))
  end

  test "should destroy datasources_product" do
    assert_difference('DatasourcesProduct.count', -1) do
      delete :destroy, id: @datasources_product
    end

    assert_redirected_to datasources_products_path
  end
end
