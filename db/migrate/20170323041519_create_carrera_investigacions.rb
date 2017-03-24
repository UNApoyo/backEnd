class CreateCarreraInvestigacions < ActiveRecord::Migration[5.0]
  def change
    create_table :carrera_investigacions do |t|
      t.references :carrera, foreign_key: true
      t.references :grupo_investigacion, foreign_key: true

      t.timestamps
    end
  end
end
