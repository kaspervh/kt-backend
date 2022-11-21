class CreateRosters < ActiveRecord::Migration[7.0]
  def change
    create_table :rosters do |t|
      t.integer :user_id
      t.string :name
      t.string :data

      t.timestamps
    end
  end
end
