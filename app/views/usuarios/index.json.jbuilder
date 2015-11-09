json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :nome, :cpf, :cep, :endereco, :numero, :bairro, :cidade, :uf, :email, :senha
  json.url usuario_url(usuario, format: :json)
end
