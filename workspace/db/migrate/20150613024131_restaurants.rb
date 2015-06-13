class Restaurants < ActiveRecord::Migration
  def change
    add_column :restaurants,:user_id,:integer
    add_column :restaurants,:cuidad_id,:integer
  end
end
