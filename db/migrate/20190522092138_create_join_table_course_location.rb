# frozen_string_literal: true

class CreateJoinTableCourseLocation < ActiveRecord::Migration[5.2]
  def change
    create_join_table :courses, :locations do |t|
      t.index %i[course_id location_id]
    end
  end
end
