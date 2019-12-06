module Dashboard

  class ContactsController < ApplicationController
 		layout 'dashboard'

    def index
      @contacts = Contact.all
    end

    def show
      @contact = Contact.find(params[:id])
    end

  end

end
