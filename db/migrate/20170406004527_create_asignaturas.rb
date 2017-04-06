class CreateAsignaturas < ActiveRecord::Migration[5.0]
  def change
    create_table :asignaturas do |t|
      t.string :nombre
      t.integer :creditos
      t.string :tipologia
      t.integer :codigo
      t.references :prerequisito, foreign_key: true

      t.timestamps
    end
  end
end
