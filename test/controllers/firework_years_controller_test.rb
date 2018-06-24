require 'test_helper'

class FireworkYearsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @firework_year = firework_years(:one)
  end

  test "should get index" do
    get firework_years_url
    assert_response :success
  end

  test "should get new" do
    get new_firework_year_url
    assert_response :success
  end

  test "should create firework_year" do
    assert_difference('FireworkYear.count') do
      post firework_years_url, params: { firework_year: { firework_id: @firework_year.firework_id, firework_year: @firework_year.firework_year } }
    end

    assert_redirected_to firework_year_url(FireworkYear.last)
  end

  test "should show firework_year" do
    get firework_year_url(@firework_year)
    assert_response :success
  end

  test "should get edit" do
    get edit_firework_year_url(@firework_year)
    assert_response :success
  end

  test "should update firework_year" do
    patch firework_year_url(@firework_year), params: { firework_year: { firework_id: @firework_year.firework_id, firework_year: @firework_year.firework_year } }
    assert_redirected_to firework_year_url(@firework_year)
  end

  test "should destroy firework_year" do
    assert_difference('FireworkYear.count', -1) do
      delete firework_year_url(@firework_year)
    end

    assert_redirected_to firework_years_url
  end
end
