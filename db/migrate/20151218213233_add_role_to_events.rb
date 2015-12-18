class AddRoleToEvents < ActiveRecord::Migration
  def change
    add_column :events, :role, :string
  end
end
