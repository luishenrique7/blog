class ContactMailer < ActionMailer::Base
  #default :from => @contact['email']
   default :from => 'lhenriquee7@gmail.com'

  def contact_message(contact)
    @contact = contact
    mail(:to => 'lhenriquelh7@hotmail.com', :subject => 'Contato Blog WL Rails')
  end
end