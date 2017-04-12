class RemoveMoodFromVitamins < ActiveRecord::Migration[5.0]
  def change
    remove_column :vitamins, :mood, :boolean
  end
end
