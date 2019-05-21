# frozen_string_literal: true

class Course < ApplicationRecord
  belongs_to :category
  belongs_to :location
  belongs_to :user
  validates :category_id, presence: true
  validates :name, presence: true, length: { maximum: 30 }
end
