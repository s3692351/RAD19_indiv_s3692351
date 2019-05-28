# frozen_string_literal: true

class Course < ApplicationRecord
  has_one_attached :courseImage
  has_and_belongs_to_many :categories
  has_and_belongs_to_many :locations
  has_many :likes, dependent: :destroy
  belongs_to :user
  validates :category_ids, presence: true
  validates :location_ids, presence: true
  validates :name, presence: true, length: { minimum: 10, maximum: 30 }
  validates :prerequisite, presence: true, length: { minimum: 10, maximum: 30 }
  validates :description, presence: true, length: { minimum: 10, maximum: 1000 }
end
