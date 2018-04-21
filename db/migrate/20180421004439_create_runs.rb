class CreateRuns < ActiveRecord::Migration[5.1]
  def change
    create_table :runs do |t|
      t.float :distance
      t.time :time

      t.timestamps
    end
  end
end
