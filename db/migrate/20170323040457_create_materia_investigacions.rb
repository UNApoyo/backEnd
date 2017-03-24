class CreateMateriaInvestigacions < ActiveRecord::Migration[5.0]
  def change
    create_table :materia_investigacions do |t|
      t.references :materia, foreign_key: true
      t.references :grupo_investigacion, foreign_key: true

      t.timestamps
    end
  end
end
