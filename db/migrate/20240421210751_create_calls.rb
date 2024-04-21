class CreateCalls < ActiveRecord::Migration[7.1]
  def change
    create_table :calls do |t|
      t.date :date
      t.string :notes
      t.references :kid, null: false, foreign_key: true
      t.references :campain, null: false, foreign_key: true

      t.timestamps
    end
  end
end
