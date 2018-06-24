require "application_system_test_case"

class FireworkDetailsTest < ApplicationSystemTestCase
  setup do
    @firework_detail = firework_details(:one)
  end

  test "visiting the index" do
    visit firework_details_url
    assert_selector "h1", text: "Firework Details"
  end

  test "creating a Firework detail" do
    visit firework_details_url
    click_on "New Firework Detail"

    fill_in "Firework", with: @firework_detail.firework_id
    fill_in "Price", with: @firework_detail.price
    fill_in "Quantity", with: @firework_detail.quantity
    fill_in "Stash", with: @firework_detail.stash
    click_on "Create Firework detail"

    assert_text "Firework detail was successfully created"
    click_on "Back"
  end

  test "updating a Firework detail" do
    visit firework_details_url
    click_on "Edit", match: :first

    fill_in "Firework", with: @firework_detail.firework_id
    fill_in "Price", with: @firework_detail.price
    fill_in "Quantity", with: @firework_detail.quantity
    fill_in "Stash", with: @firework_detail.stash
    click_on "Update Firework detail"

    assert_text "Firework detail was successfully updated"
    click_on "Back"
  end

  test "destroying a Firework detail" do
    visit firework_details_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Firework detail was successfully destroyed"
  end
end
