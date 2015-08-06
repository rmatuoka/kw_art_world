class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    if @contact.save
      Notifier.send_contact(@contact).deliver
      Notifier.send_contact_user(@contact).deliver
    else 
      @erro = true
    end
  end

  def show
    
  end
end
