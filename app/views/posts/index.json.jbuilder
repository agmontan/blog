json.array!(@posts) do |post|
  json.extract! post, :id, :titulo, :articulo, :like, :category, :user_id
  json.url post_url(post, format: :json)
end
