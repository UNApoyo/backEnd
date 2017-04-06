class CreateCarreraAsignaturas < ActiveRecord::Migration[5.0]
  def change
    create_table :carrera_asignaturas do |t|
      t.references :carrera, foreign_key: true
      t.references :asignatura, foreign_key: true

      t.timestamps
    end
  end
end
