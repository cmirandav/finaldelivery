class CreateHoraentregas < ActiveRecord::Migration
  def change
    create_table :horaentregas do |t|
      t.string :deshora

      t.timestamps null: false
    end
  end
end
