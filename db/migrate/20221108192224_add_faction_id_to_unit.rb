class AddFactionIdToUnit < ActiveRecord::Migration[7.0]
  def change
    add_column :units, :faction_id, :integer
  end
end
