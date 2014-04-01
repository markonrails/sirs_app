json.array!(@ratings) do |rating|
  json.extract! rating, :id, :value, :user_id, :product_id
  json.url rating_url(rating, format: :json)
end
