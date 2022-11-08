class AddOptionsToUnits < ActiveRecord::Migration[7.0]
  def change
    add_column :units, :options, :string
  end
end
