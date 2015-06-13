class CreatePedidos < ActiveRecord::Migration
  def change
    create_table :pedidos do |t|
      t.timestamp :hora

      t.timestamps null: false
    end
  end
end
