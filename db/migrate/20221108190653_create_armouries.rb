class CreateArmouries < ActiveRecord::Migration[7.0]
  def change
    create_table :armouries do |t|
      t.integer :unit_id
      t.string :name
      t.string :description
      t.integer :price

      t.timestamps
    end
  end
end
