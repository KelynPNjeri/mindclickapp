class AddColumnsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :is_therapist, :boolean
    add_column :users, :fee, :integer
  end
end
