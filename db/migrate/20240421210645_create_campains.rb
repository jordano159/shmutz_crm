class CreateCampains < ActiveRecord::Migration[7.1]
  def change
    create_table :campains do |t|
      t.string :name
      t.date :year
      t.text :script
      t.string :notes
      t.references :ken, null: false, foreign_key: true

      t.timestamps
    end
  end
end
