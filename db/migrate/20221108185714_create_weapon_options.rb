class CreateWeaponOptions < ActiveRecord::Migration[7.0]
  def change
    create_table :weapon_options do |t|
      t.integer :unit_id
      t.string :name
      t.integer :range
      t.integer :strength
      t.integer :armor_penetration
      t.string :weapon_type

      t.timestamps
    end
  end
end
