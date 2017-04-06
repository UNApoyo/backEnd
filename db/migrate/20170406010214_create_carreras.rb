class CreateCarreras < ActiveRecord::Migration[5.0]
  def change
    create_table :carreras do |t|
      t.string :nombre
      t.integer :creditos
      t.integer :codigo
      t.references :enfoque, foreign_key: true
      t.references :trabajo_grado, foreign_key: true
      t.references :estudiante, foreign_key: true

      t.timestamps
    end
  end
end
