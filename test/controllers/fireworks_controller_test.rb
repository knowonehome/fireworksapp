require 'test_helper'

class FireworksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @firework = fireworks(:one)
  end

  test "should get index" do
    get fireworks_url
    assert_response :success
  end

  test "should get new" do
    get new_firework_url
    assert_response :success
  end

  test "should create firework" do
    assert_difference('Firework.count') do
      post fireworks_url, params: { firework: {  } }
    end

    assert_redirected_to firework_url(Firework.last)
  end

  test "should show firework" do
    get firework_url(@firework)
    assert_response :success
  end

  test "should get edit" do
    get edit_firework_url(@firework)
    assert_response :success
  end

  test "should update firework" do
    patch firework_url(@firework), params: { firework: {  } }
    assert_redirected_to firework_url(@firework)
  end

  test "should destroy firework" do
    assert_difference('Firework.count', -1) do
      delete firework_url(@firework)
    end

    assert_redirected_to fireworks_url
  end
end
