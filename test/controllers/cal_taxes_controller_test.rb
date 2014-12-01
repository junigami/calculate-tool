require 'test_helper'

class CalTaxesControllerTest < ActionController::TestCase
  setup do
    @cal_tax = cal_taxes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cal_taxes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cal_tax" do
    assert_difference('CalTax.count') do
      post :create, cal_tax: { withouttax: @cal_tax.withouttax, withtax: @cal_tax.withtax }
    end

    assert_redirected_to cal_tax_path(assigns(:cal_tax))
  end

  test "should show cal_tax" do
    get :show, id: @cal_tax
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cal_tax
    assert_response :success
  end

  test "should update cal_tax" do
    patch :update, id: @cal_tax, cal_tax: { withouttax: @cal_tax.withouttax, withtax: @cal_tax.withtax }
    assert_redirected_to cal_tax_path(assigns(:cal_tax))
  end

  test "should destroy cal_tax" do
    assert_difference('CalTax.count', -1) do
      delete :destroy, id: @cal_tax
    end

    assert_redirected_to cal_taxes_path
  end
end
