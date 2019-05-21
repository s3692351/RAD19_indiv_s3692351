# frozen_string_literal: true

class AddUserToCourse < ActiveRecord::Migration[5.2]
  def change
    add_reference :courses, :user, foreign_key: true
  end
end
