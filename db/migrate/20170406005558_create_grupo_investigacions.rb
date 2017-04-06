class CreateGrupoInvestigacions < ActiveRecord::Migration[5.0]
  def change
    create_table :grupo_investigacions do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
