# frozen_string_literal: true

class Contact < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i.freeze
  validates :name, presence: true, length: { minimum: 3, maximum: 25 }
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
  validates :message, presence: true, length: { minimum: 5 }
end
