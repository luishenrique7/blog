class Usuario < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :lockable,
         :recoverable, :rememberable, :trackable, :validatable

  	#validates :email, uniqueness: true
	validates :cpf, length: { is: 11 }
	validates_presence_of :nome, :cpf
	validates :email, presence: true, format: {with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, on: :create}, uniqueness: {case_sensitive: false}

	scope :por_nome, ->(nome) {
		where("nome LIKE ?", "%#{nome}%")
	}

end
