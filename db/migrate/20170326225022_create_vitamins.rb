class CreateVitamins < ActiveRecord::Migration[5.0]
  def change
    create_table :vitamins do |t|
      t.string :name
      t.string :dosage
      t.decimal :cost
      t.boolean :required
      t.boolean :active
      t.string :photo
      t.text :observations
      t.text :notes
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
