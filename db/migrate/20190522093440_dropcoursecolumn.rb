class Dropcoursecolumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :courses, :category_id
  end
end
