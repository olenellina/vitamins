class RemovePurposeFromVitamins < ActiveRecord::Migration[5.0]
  def change
    remove_column :vitamins, :purpose, :string
  end
end
