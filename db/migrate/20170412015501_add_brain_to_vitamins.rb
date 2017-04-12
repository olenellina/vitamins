class AddBrainToVitamins < ActiveRecord::Migration[5.0]
  def change
    add_column :vitamins, :brain, :boolean
  end
end
