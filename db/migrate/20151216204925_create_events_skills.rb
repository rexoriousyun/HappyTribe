class CreateEventsSkills < ActiveRecord::Migration
  def change
    create_table :events_skills do |t|
      t.integer :event_id
      t.integer :skill_id
    end
  end
end
