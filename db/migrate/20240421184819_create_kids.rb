class CreateKids < ActiveRecord::Migration[7.1]
  def change
    create_table :kids do |t|
      t.string :name
      t.string :phone
      t.string :grade
      t.integer :status
      t.string :notes

      t.timestamps
    end
  end
end
