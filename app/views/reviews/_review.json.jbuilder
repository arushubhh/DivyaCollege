json.extract! review, :id, :college_id, :user_id, :review_matrix, :review_comment, :created_at, :updated_at
json.url review_url(review, format: :json)
