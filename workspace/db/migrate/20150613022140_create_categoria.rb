class CreateCategoria < ActiveRecord::Migration
  def change
    create_table :categoria do |t|
      t.string :nomcateg

      t.timestamps null: false
    end
  end
end
