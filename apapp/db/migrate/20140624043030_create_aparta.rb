class CreateAparta < ActiveRecord::Migration
  def change
    create_table :aparta do |t|
      t.string :titulo
      t.string :descripcion
      t.string :ubicacion
      t.integer :costo
      t.string :contacto

      t.timestamps
    end
  end
end
