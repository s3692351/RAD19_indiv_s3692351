# frozen_string_literal: true

class User < ApplicationRecord
  validates :name, presence: true, uniqueness: { case_sensitive: false },
                   length: { minimum: 3, maximum: 25 }
  VALID_RMIT_MAIL_REGEX = /[a-z]*.[a-z]*@rmit.edu.au/i.freeze
  VALID_PASSWORD_REGEX = /(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[\W]).{8,}/i.freeze
  validates :email, uniqueness: { case_sensitive: false },
                    format: { with: VALID_RMIT_MAIL_REGEX,
                              message: 'registration only open for RMIT staff' },
                    length: { minimum: 4, maximum: 70 },
                    presence: true
  has_secure_password
  validates :password, format: { with: VALID_PASSWORD_REGEX,
                                 message: 'must contain at least a lowercase letter,
                                a uppercase, a digit, a special character and 8+ characters' }
end
