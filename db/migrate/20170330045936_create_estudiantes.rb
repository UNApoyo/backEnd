class CreateEstudiantes < ActiveRecord::Migration[5.0]
  def change
    create_table :estudiantes do |t|
      t.integer :porcentaje_carrera
      t.integer :creditos_disponibles
      t.integer :creditos_aprobados
      t.integer :creditos_inscritos
      t.integer :creditos_pendientes
      t.references :materia, foreign_key: true

      t.timestamps
    end
  end
end
