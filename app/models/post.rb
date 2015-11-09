class Post < ActiveRecord::Base
  belongs_to :usuario
  has_many :comentarios

  validates_presence_of :usuario, :titulo, :conteudo
  validates :titulo, length: { maximum: 255 }
  validates :conteudo, length: { minimum: 10 }
  
end
