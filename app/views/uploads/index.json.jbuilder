json.array!(@uploads) do |upload|
  json.extract! upload, :id, :nome, :descricao, :image
  json.url upload_url(upload, format: :json)
end
