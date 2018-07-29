json.extract! user, :id, :post_id, :comment, :created_at, :updated_at
json.url user_url(user, format: :json)
