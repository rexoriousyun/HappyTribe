class CreateTimeslots < ActiveRecord::Migration
  def change
    create_table :timeslots do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.integer :capacity
      t.belongs_to :opportunity, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
