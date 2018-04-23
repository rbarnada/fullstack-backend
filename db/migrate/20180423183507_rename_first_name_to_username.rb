class RenameFirstNameToUsername < ActiveRecord::Migration[5.1]
  def change
    rename_column :users, :first_name, :username
  end
end
