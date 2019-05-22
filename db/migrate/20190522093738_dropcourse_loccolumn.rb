# frozen_string_literal: true

class DropcourseLoccolumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :courses, :location_id
  end
end
