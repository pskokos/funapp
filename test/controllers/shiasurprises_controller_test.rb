require 'test_helper'

class ShiasurprisesControllerTest < ActionController::TestCase
  setup do
    @shiasurprise = shiasurprises(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shiasurprises)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shiasurprise" do
    assert_difference('Shiasurprise.count') do
      post :create, shiasurprise: { amount: @shiasurprise.amount, name: @shiasurprise.name }
    end

    assert_redirected_to shiasurprise_path(assigns(:shiasurprise))
  end

  test "should show shiasurprise" do
    get :show, id: @shiasurprise
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shiasurprise
    assert_response :success
  end

  test "should update shiasurprise" do
    patch :update, id: @shiasurprise, shiasurprise: { amount: @shiasurprise.amount, name: @shiasurprise.name }
    assert_redirected_to shiasurprise_path(assigns(:shiasurprise))
  end

  test "should destroy shiasurprise" do
    assert_difference('Shiasurprise.count', -1) do
      delete :destroy, id: @shiasurprise
    end

    assert_redirected_to shiasurprises_path
  end
end
