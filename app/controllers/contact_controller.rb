# frozen_string_literal: true

class ContactController < ApplicationController
  def index
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      ContactsMailer.general_message(@contact).deliver
      flash[:success] = 'We will be back to you shortly.'
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end
end
