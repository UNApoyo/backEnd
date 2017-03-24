class CreateMateria < ActiveRecord::Migration[5.0]
  def change
    create_table :materia do |t|
      t.string :nombre
      t.integer :creditos
      t.string :tipo

      t.timestamps
    end
  end
end
