class AddRetailerToVitamins < ActiveRecord::Migration[5.0]
  def change
    add_column :vitamins, :retailer, :string
  end
end
