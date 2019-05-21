# frozen_string_literal: true

class ContactsMailer < ApplicationMailer
  def general_message(contact)
    @contact = contact
    mail(to: 's3692351@student.rmit.edu.au', from: @contact.email, subject: 'You
      Have a Message From Your Website') do |format|
      format.text do
        render plain: "Email from: #{@contact.name}
         Message: #{@contact.message}"
      end
    end
  end
end
