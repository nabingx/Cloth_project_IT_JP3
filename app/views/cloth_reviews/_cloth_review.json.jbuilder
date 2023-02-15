json.extract! cloth_review, :id, :user_id, :cloth_id, :review, :created_at, :updated_at
json.url cloth_review_url(cloth_review, format: :json)
