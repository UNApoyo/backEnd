class CreateHistoriaAcademicas < ActiveRecord::Migration[5.0]
  def change
    create_table :historia_academicas do |t|
      t.decimal :calificacion
      t.references :asignatura, foreign_key: true
      t.references :estudiante, foreign_key: true

      t.timestamps
    end
  end
end
