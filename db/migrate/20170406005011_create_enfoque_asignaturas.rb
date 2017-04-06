class CreateEnfoqueAsignaturas < ActiveRecord::Migration[5.0]
  def change
    create_table :enfoque_asignaturas do |t|
      t.references :enfoque, foreign_key: true
      t.references :asignatura, foreign_key: true

      t.timestamps
    end
  end
end
