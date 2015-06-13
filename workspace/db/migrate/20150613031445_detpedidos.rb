class Detpedidos < ActiveRecord::Migration
  def change
    add_column :detpedidos,:plato_id,:integer
    add_column :detpedidos,:pedido_id,:integer
  end
end
