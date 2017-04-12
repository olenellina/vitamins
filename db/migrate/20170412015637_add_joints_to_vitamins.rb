class AddJointsToVitamins < ActiveRecord::Migration[5.0]
  def change
    add_column :vitamins, :joints, :boolean
  end
end
