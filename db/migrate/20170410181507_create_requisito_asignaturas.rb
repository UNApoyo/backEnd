class CreateRequisitoAsignaturas < ActiveRecord::Migration[5.0]
  def change
    create_table :requisito_asignaturas do |t|
      t.references :prerequisito, foreign_key: true
      t.references :asignatura, foreign_key: true

      t.timestamps
    end
  end
end
