class AddMoreColumnsToVitamins < ActiveRecord::Migration[5.0]
  def change
    add_column :vitamins, :unavailable, :boolean
    add_column :vitamins, :bones, :boolean
    add_column :vitamins, :eyes, :boolean
  end
end
