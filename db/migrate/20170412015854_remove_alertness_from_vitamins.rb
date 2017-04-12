class RemoveAlertnessFromVitamins < ActiveRecord::Migration[5.0]
  def change
    remove_column :vitamins, :alertness, :boolean
  end
end
