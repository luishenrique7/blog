json.array!(@comentarios) do |comentario|
  json.extract! comentario, :id, :usuario_id, :post_id, :descricao
  json.url comentario_url(comentario, format: :json)
end
