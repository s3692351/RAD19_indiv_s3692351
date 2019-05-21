# frozen_string_literal: true

class Category < ApplicationRecord
  has_many :course
  validates :title, presence: true, length: { maximum: 20 }
end
