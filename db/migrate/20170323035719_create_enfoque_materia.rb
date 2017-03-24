class CreateEnfoqueMateria < ActiveRecord::Migration[5.0]
  def change
    create_table :enfoque_materia do |t|
      t.references :enfoque, foreign_key: true
      t.references :materia, foreign_key: true

      t.timestamps
    end
  end
end
