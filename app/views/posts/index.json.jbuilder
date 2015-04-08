json.array!(@posts) do |post|
  json.extract! post, :id, :titulo, :articulo, :like
  json.url post_url(post, format: :json)
end
