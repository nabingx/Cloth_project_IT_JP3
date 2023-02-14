require "application_system_test_case"

class ClothReviewsTest < ApplicationSystemTestCase
  setup do
    @cloth_review = cloth_reviews(:one)
  end

  test "visiting the index" do
    visit cloth_reviews_url
    assert_selector "h1", text: "Cloth Reviews"
  end

  test "creating a Cloth review" do
    visit cloth_reviews_url
    click_on "New Cloth Review"

    fill_in "Cloth", with: @cloth_review.cloth_id
    fill_in "Review", with: @cloth_review.review
    fill_in "User", with: @cloth_review.user_id
    click_on "Create Cloth review"

    assert_text "Cloth review was successfully created"
    click_on "Back"
  end

  test "updating a Cloth review" do
    visit cloth_reviews_url
    click_on "Edit", match: :first

    fill_in "Cloth", with: @cloth_review.cloth_id
    fill_in "Review", with: @cloth_review.review
    fill_in "User", with: @cloth_review.user_id
    click_on "Update Cloth review"

    assert_text "Cloth review was successfully updated"
    click_on "Back"
  end

  test "destroying a Cloth review" do
    visit cloth_reviews_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cloth review was successfully destroyed"
  end
end
