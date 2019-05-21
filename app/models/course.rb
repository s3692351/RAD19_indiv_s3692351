# frozen_string_literal: true

class Course < ApplicationRecord
  belongs_to :category
  belongs_to :location
  belongs_to :user
  validates :category_id, presence: true
  validates :name, presence: true, length: {minimum: 10, maximum: 30 }
  validates :prerequisite, presence: true, length: {minimum: 10, maximum: 30}
  validates :description, presence: true, length: {minimum: 10, maximum: 30}
end
