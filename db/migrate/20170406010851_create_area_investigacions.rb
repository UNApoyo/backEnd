class CreateAreaInvestigacions < ActiveRecord::Migration[5.0]
  def change
    create_table :area_investigacions do |t|
      t.references :area, foreign_key: true
      t.references :grupo_investigacion, foreign_key: true

      t.timestamps
    end
  end
end
