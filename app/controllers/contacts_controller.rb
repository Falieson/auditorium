class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash[:notice] = "Thanks for emailing me, I'll be in touch."
      redirect_to root_path
    else
      render :new
      flash[:error] = "There was an error sending your message."
    end
  end
end