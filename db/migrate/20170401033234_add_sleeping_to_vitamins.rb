class AddSleepingToVitamins < ActiveRecord::Migration[5.0]
  def change
    add_column :vitamins, :sleeping, :boolean
  end
end
