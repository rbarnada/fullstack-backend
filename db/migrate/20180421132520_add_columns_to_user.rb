class AddColumnsToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :first_name, :string
    add_column :users, :dob, :date
    add_column :users, :gender, :string
  end
end
