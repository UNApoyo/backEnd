class CreateAreas < ActiveRecord::Migration[5.0]
  def change
    create_table :areas do |t|
      t.string :nombre
      t.references :materia, foreign_key: true

      t.timestamps
    end
  end
end
