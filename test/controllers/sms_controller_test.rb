require 'test_helper'

class SmsControllerTest < ActionController::TestCase
  setup do
    @sm = sms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sm" do
    assert_difference('Sm.count') do
      post :create, sm: { body: @sm.body, from: @sm.from, to: @sm.to, user_id: @sm.user_id }
    end

    assert_redirected_to sm_path(assigns(:sm))
  end

  test "should show sm" do
    get :show, id: @sm
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sm
    assert_response :success
  end

  test "should update sm" do
    patch :update, id: @sm, sm: { body: @sm.body, from: @sm.from, to: @sm.to, user_id: @sm.user_id }
    assert_redirected_to sm_path(assigns(:sm))
  end

  test "should destroy sm" do
    assert_difference('Sm.count', -1) do
      delete :destroy, id: @sm
    end

    assert_redirected_to sms_path
  end
end
