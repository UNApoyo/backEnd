class CreatePrerequisitos < ActiveRecord::Migration[5.0]
  def change
    create_table :prerequisitos do |t|
      t.integer :requisito
      t.integer :requisito_de

      t.timestamps
    end
  end
end
