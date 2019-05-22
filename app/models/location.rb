# frozen_string_literal: true

class Location < ApplicationRecord
  has_and_belongs_to_many :courses
  validates :name, presence: true, length: { maximum: 20 }
end
