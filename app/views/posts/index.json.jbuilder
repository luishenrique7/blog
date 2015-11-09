json.array!(@posts) do |post|
  json.extract! post, :id, :usuario_id, :titulo, :conteudo
  json.url post_url(post, format: :json)
end
