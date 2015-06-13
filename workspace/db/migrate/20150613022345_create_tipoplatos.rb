class CreateTipoplatos < ActiveRecord::Migration
  def change
    create_table :tipoplatos do |t|
      t.string :destipplato

      t.timestamps null: false
    end
  end
end
