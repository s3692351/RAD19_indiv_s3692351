class AddLocationToCourse < ActiveRecord::Migration[5.2]
  def change
    add_reference :courses, :location, foreign_key: true
  end
end
