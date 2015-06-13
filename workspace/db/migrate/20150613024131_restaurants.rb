class Restaurants < ActiveRecord::Migration
  def change
    add_column :restaurants,:user_id,:integer
    add_column :restaurants,:ciudad_id,:integer
  end
end
