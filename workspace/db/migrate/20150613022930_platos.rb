class Platos < ActiveRecord::Migration
  def change
    add_column :platos,:tipoplato_id,:integer
    add_column :platos,:restaurants_id,:integer
  end
end
