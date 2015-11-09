class Contact
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  validates_presence_of :email

  attr_accessor :nome, :email, :telefone, :assunto, :mensagem

 validates :nome,
            :length => {:in => 2..50}

validates_format_of :email,
                      :with => /\A[\w\._%-]+@[\w\.-]+\.[a-zA-Z]{2,4}\z/,
                      :if => Proc.new { |u| !u.email.nil? && !u.email.blank? },
                      :message => "não valido"

  validates :mensagem,
            :length => {:in => 10..750}

  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  def persisted?
    false
  end
end