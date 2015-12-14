class CreateOpportunities < ActiveRecord::Migration
  def change
    create_table :opportunities do |t|
      t.string :name
      t.datetime :start_time
      t.datetime :end_time
      t.integer :max_capacity
      t.string :location
      t.text :description
      t.belongs_to :organization, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
