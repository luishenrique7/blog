class CreateUploads < ActiveRecord::Migration
  def change
    create_table :uploads do |t|
      t.string :nome
      t.string :descricao
      t.string :image

      t.timestamps null: false
    end
  end
end
