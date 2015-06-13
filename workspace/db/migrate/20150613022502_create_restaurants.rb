class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :nombre
      t.string :direcc
      t.text :resena
      t.string :correo

      t.timestamps null: false
    end
  end
end
