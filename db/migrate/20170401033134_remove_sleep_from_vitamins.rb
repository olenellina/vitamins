class RemoveSleepFromVitamins < ActiveRecord::Migration[5.0]
  def change
    remove_column :vitamins, :sleep, :string
  end
end
