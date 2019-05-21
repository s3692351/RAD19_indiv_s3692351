# frozen_string_literal: true

class Renamelocationcolumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :locations, :location, :name
    # Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
