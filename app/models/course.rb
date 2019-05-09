# frozen_string_literal: true

class Course < ApplicationRecord
  belongs_to :category
  validates :category_id, presence: true
  validates :name, presence: true, length: { maximum: 30 }
end
