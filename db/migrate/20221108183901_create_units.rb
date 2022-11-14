class CreateUnits < ActiveRecord::Migration[7.0]
  def change
    create_table :units do |t|
      t.string :name
      t.integer :weapon_skill
      t.integer :balistics_skill
      t.integer :strength
      t.integer :toughness
      t.integer :wounds
      t.integer :initiative
      t.integer :attacks
      t.integer :leadership
      t.integer :armor_save
      t.string :unit_type
      t.integer :price

      t.timestamps
    end
  end
end
