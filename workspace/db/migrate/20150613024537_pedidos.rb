class Pedidos < ActiveRecord::Migration
  def change
    add_column :pedidos,:user_id,:integer
    add_column :pedidos,:restaurant_id,:integer
    add_column :pedidos,:horaentrega_id,:integer
  end
end
