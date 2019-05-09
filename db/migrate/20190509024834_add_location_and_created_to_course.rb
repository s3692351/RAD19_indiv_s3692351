# frozen_string_literal: true

class AddLocationAndCreatedToCourse < ActiveRecord::Migration[5.2]
  def change
    add_column :courses, :location, :string, after: 'name'
    add_column :courses, :created, :datetime, after: 'description'
    # Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
    # Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
