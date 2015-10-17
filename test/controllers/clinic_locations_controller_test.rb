require 'test_helper'

class ClinicLocationsControllerTest < ActionController::TestCase
  setup do
    @clinic_location = clinic_locations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clinic_locations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clinic_location" do
    assert_difference('ClinicLocation.count') do
      post :create, clinic_location: { address: @clinic_location.address, lat: @clinic_location.lat, long: @clinic_location.long, phone_number: @clinic_location.phone_number, title: @clinic_location.title }
    end

    assert_redirected_to clinic_location_path(assigns(:clinic_location))
  end

  test "should show clinic_location" do
    get :show, id: @clinic_location
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @clinic_location
    assert_response :success
  end

  test "should update clinic_location" do
    patch :update, id: @clinic_location, clinic_location: { address: @clinic_location.address, lat: @clinic_location.lat, long: @clinic_location.long, phone_number: @clinic_location.phone_number, title: @clinic_location.title }
    assert_redirected_to clinic_location_path(assigns(:clinic_location))
  end

  test "should destroy clinic_location" do
    assert_difference('ClinicLocation.count', -1) do
      delete :destroy, id: @clinic_location
    end

    assert_redirected_to clinic_locations_path
  end
end
