class CreateSpecialRules < ActiveRecord::Migration[7.0]
  def change
    create_table :special_rules do |t|
      t.integer :unit_id
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
