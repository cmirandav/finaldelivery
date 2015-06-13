class CreatePlatos < ActiveRecord::Migration
  def change
    create_table :platos do |t|
      t.date :fecha
      t.string :nomplato
      t.integer :cantidad

      t.timestamps null: false
    end
  end
end
