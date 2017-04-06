class CreateProfesorGrados < ActiveRecord::Migration[5.0]
  def change
    create_table :profesor_grados do |t|
      t.references :profesor, foreign_key: true
      t.references :trabajo_grado, foreign_key: true

      t.timestamps
    end
  end
end
