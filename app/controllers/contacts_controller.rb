class ContactsController < ApplicationController
  before_action :set_contact, only: [:show, :edit, :update, :destroy]


  # GET /contacts/new
  def new
    @contact = Contact.new
  end

 def capturarEmailLogado
    @contact = Contact.find(params[:email])
end
  # POST /contacts
  # POST /contacts.json
  def create
    @contact = Contact.new(params[:contact])

    if @contact.valid?
      ContactMailer.contact_message(params[:contact]).deliver
      flash[:notice] = 'Solicitação enviada com sucesso, agradecemos o seu contato! Caso necessite de resposta entraremos em contato em até 24hrs.'
      redirect_to :action => 'new'
      return  
    end

    render :action => 'new'
  end

end
