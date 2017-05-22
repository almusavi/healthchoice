class ContactsController < ApplicationController
  def new
	@provider = Provider.find_by(id: params[:provider])
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
	@provider = Provider.find_by(id: params[:provider])
    if @contact.deliver
      flash.now[:notice] = 'Thank you for your message. We will contact you soon!'
    else
      flash.now[:error] = 'Cannot send message.'
      render :new
    end
    # render "sent.html.erb"
  end

	def sent
	end
end