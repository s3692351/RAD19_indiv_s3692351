# frozen_string_literal: true

class CreateJoinTableCourseCategory < ActiveRecord::Migration[5.2]
  def change
    create_join_table :courses, :categories do |t|
      t.index %i[course_id category_id]
    end
  end
end
