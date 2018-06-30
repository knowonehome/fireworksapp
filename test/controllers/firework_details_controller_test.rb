require 'test_helper'

class FireworkDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @firework_detail = firework_details(:one)
  end

  test "should get index" do
    get firework_details_url
    assert_response :success
  end

  test "should get new" do
    get new_firework_detail_url
    assert_response :success
  end

  test "should create firework_detail" do
    assert_difference('FireworkDetail.count') do
      post firework_details_url, params: { firework_detail: { firework_id: @firework_detail.firework_id, price: @firework_detail.price, quantity: @firework_detail.quantity, stash: @firework_detail.stash } }
    end

    assert_redirected_to firework_detail_url(FireworkDetail.last)
  end

  test "should show firework_detail" do
    get firework_detail_url(@firework_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_firework_detail_url(@firework_detail)
    assert_response :success
  end

  test "should update firework_detail" do
    patch firework_detail_url(@firework_detail), params: { firework_detail: { firework_id: @firework_detail.firework_id, price: @firework_detail.price, quantity: @firework_detail.quantity, stash: @firework_detail.stash } }
    assert_redirected_to firework_detail_url(@firework_detail)
  end

  test "should destroy firework_detail" do
    assert_difference('FireworkDetail.count', -1) do
      delete firework_detail_url(@firework_detail)
    end

    assert_redirected_to firework_details_url
  end
end
