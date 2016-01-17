class ContactsController < ApplicationController
	def new
		@contact = Contact.new
	end

	def create
		@contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      #flash.now[:notice] = 'Dziękuję za wiadomość.'
    else
      flash.now[:error] = 'Wystapił problem z wysłaniem wiadomości.'
      render :new
    end
	end
end
