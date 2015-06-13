class CreateDetpedidos < ActiveRecord::Migration
  def change
    create_table :detpedidos do |t|
      t.integer :canped

      t.timestamps null: false
    end
  end
end
