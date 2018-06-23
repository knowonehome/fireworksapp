require "application_system_test_case"

class FireworksTest < ApplicationSystemTestCase
  setup do
    @firework = fireworks(:one)
  end

  test "visiting the index" do
    visit fireworks_url
    assert_selector "h1", text: "Fireworks"
  end

  test "creating a Firework" do
    visit fireworks_url
    click_on "New Firework"

    click_on "Create Firework"

    assert_text "Firework was successfully created"
    click_on "Back"
  end

  test "updating a Firework" do
    visit fireworks_url
    click_on "Edit", match: :first

    click_on "Update Firework"

    assert_text "Firework was successfully updated"
    click_on "Back"
  end

  test "destroying a Firework" do
    visit fireworks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Firework was successfully destroyed"
  end
end
