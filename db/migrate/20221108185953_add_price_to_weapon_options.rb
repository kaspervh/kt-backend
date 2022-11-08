class AddPriceToWeaponOptions < ActiveRecord::Migration[7.0]
  def change
    add_column :weapon_options, :price, :integer
  end
end
