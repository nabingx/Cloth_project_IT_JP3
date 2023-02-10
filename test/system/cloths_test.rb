require "application_system_test_case"

class ClothsTest < ApplicationSystemTestCase
  setup do
    @cloth = cloths(:one)
  end

  test "visiting the index" do
    visit cloths_url
    assert_selector "h1", text: "Cloths"
  end

  test "creating a Cloth" do
    visit cloths_url
    click_on "New Cloth"

    fill_in "Number of cloths", with: @cloth.number_of_cloths
    fill_in "Title", with: @cloth.title
    click_on "Create Cloth"

    assert_text "Cloth was successfully created"
    click_on "Back"
  end

  test "updating a Cloth" do
    visit cloths_url
    click_on "Edit", match: :first

    fill_in "Number of cloths", with: @cloth.number_of_cloths
    fill_in "Title", with: @cloth.title
    click_on "Update Cloth"

    assert_text "Cloth was successfully updated"
    click_on "Back"
  end

  test "destroying a Cloth" do
    visit cloths_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cloth was successfully destroyed"
  end
end
