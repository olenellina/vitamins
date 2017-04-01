class AddColumnsToVitamins < ActiveRecord::Migration[5.0]
  def change
    add_column :vitamins, :general, :boolean
    add_column :vitamins, :antioxidant, :boolean
    add_column :vitamins, :skin, :boolean
    add_column :vitamins, :longevity, :boolean
    add_column :vitamins, :digestive, :boolean
    add_column :vitamins, :mood, :boolean
    add_column :vitamins, :sleep, :boolean
    add_column :vitamins, :cellrepair, :boolean
    add_column :vitamins, :energy, :boolean
    add_column :vitamins, :alertness, :boolean
  end
end
