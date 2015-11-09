class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nome, limit: 45
      t.string :cpf, limit: 11
      t.string :cep, limit: 9
      t.string :endereco, limit: 60
      t.integer :numero
      t.string :bairro, limit: 60
      t.string :cidade, limit: 60
      t.string :uf, limit: 2
      t.string :email, limit: 120
      t.string :senha, limit: 64

      t.timestamps null: false
    end
  end
end
