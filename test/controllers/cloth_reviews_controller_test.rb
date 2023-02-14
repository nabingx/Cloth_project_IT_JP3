require 'test_helper'

class ClothReviewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cloth_review = cloth_reviews(:one)
  end

  test "should get index" do
    get cloth_reviews_url
    assert_response :success
  end

  test "should get new" do
    get new_cloth_review_url
    assert_response :success
  end

  test "should create cloth_review" do
    assert_difference('ClothReview.count') do
      post cloth_reviews_url, params: { cloth_review: { cloth_id: @cloth_review.cloth_id, review: @cloth_review.review, user_id: @cloth_review.user_id } }
    end

    assert_redirected_to cloth_review_url(ClothReview.last)
  end

  test "should show cloth_review" do
    get cloth_review_url(@cloth_review)
    assert_response :success
  end

  test "should get edit" do
    get edit_cloth_review_url(@cloth_review)
    assert_response :success
  end

  test "should update cloth_review" do
    patch cloth_review_url(@cloth_review), params: { cloth_review: { cloth_id: @cloth_review.cloth_id, review: @cloth_review.review, user_id: @cloth_review.user_id } }
    assert_redirected_to cloth_review_url(@cloth_review)
  end

  test "should destroy cloth_review" do
    assert_difference('ClothReview.count', -1) do
      delete cloth_review_url(@cloth_review)
    end

    assert_redirected_to cloth_reviews_url
  end
end
