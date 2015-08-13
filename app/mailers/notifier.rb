class Notifier < ActionMailer::Base
  helper :application     
  default :from => "Art World <no-reply@artworld.com.br>"

  def send_contact_user(contact)
    @contact = contact
    
    mail(:to => @contact.email, :bcc => "log@korewa.com.br", :subject => "Contato enviado - Protocolo Nº#{@contact.id} ")   
  end
  
  def send_contact(contact)
    @contact = contact
    
    mail(:to => "log@korewa.com.br", :bcc => "log@korewa.com.br", :subject => "Novo contato pelo site - Protocolo Nº#{@contact.id} ")   
  end

  
  
end
