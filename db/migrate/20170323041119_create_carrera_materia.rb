class CreateCarreraMateria < ActiveRecord::Migration[5.0]
  def change
    create_table :carrera_materia do |t|
      t.references :carrera, foreign_key: true
      t.references :materia, foreign_key: true

      t.timestamps
    end
  end
end
