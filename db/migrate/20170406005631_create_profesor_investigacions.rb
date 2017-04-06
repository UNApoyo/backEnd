class CreateProfesorInvestigacions < ActiveRecord::Migration[5.0]
  def change
    create_table :profesor_investigacions do |t|
      t.references :profesor, foreign_key: true
      t.references :investigacion, foreign_key: true

      t.timestamps
    end
  end
end
