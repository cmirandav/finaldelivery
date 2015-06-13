class CreateRestaurantsCategoria < ActiveRecord::Migration
  def change
    create_table :restaurants_categoria do |t|
      t.references :restaurant
      t.references :categorium
    end
    add_index :restaurants_categoria, :restaurant_id
    add_index :restaurants_categoria, :categorium_id
  end
end
