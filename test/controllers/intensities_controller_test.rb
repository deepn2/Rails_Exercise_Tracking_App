require 'test_helper'

class IntensitiesControllerTest < ActionController::TestCase
  setup do
    @intensity = intensities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:intensities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create intensity" do
    assert_difference('Intensity.count') do
      post :create, intensity: { description: @intensity.description, intensity: @intensity.intensity }
    end

    assert_redirected_to intensity_path(assigns(:intensity))
  end

  test "should show intensity" do
    get :show, id: @intensity
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @intensity
    assert_response :success
  end

  test "should update intensity" do
    patch :update, id: @intensity, intensity: { description: @intensity.description, intensity: @intensity.intensity }
    assert_redirected_to intensity_path(assigns(:intensity))
  end

  test "should destroy intensity" do
    assert_difference('Intensity.count', -1) do
      delete :destroy, id: @intensity
    end

    assert_redirected_to intensities_path
  end
end
