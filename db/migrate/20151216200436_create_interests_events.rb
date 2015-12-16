class CreateInterestsEvents < ActiveRecord::Migration
  def change
    create_table :events_interests do |t|
      t.integer :event_id
      t.integer :interest_id
    end
  end
end
