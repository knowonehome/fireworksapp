require "application_system_test_case"

class FireworkYearsTest < ApplicationSystemTestCase
  setup do
    @firework_year = firework_years(:one)
  end

  test "visiting the index" do
    visit firework_years_url
    assert_selector "h1", text: "Firework Years"
  end

  test "creating a Firework year" do
    visit firework_years_url
    click_on "New Firework Year"

    fill_in "Firework", with: @firework_year.firework_id
    fill_in "Firework Year", with: @firework_year.firework_year
    click_on "Create Firework year"

    assert_text "Firework year was successfully created"
    click_on "Back"
  end

  test "updating a Firework year" do
    visit firework_years_url
    click_on "Edit", match: :first

    fill_in "Firework", with: @firework_year.firework_id
    fill_in "Firework Year", with: @firework_year.firework_year
    click_on "Update Firework year"

    assert_text "Firework year was successfully updated"
    click_on "Back"
  end

  test "destroying a Firework year" do
    visit firework_years_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Firework year was successfully destroyed"
  end
end
