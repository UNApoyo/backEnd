class CreateCarreras < ActiveRecord::Migration[5.0]
  def change
    create_table :carreras do |t|
      t.string :nombre
      t.integer :creditos

      t.timestamps
    end
  end
end
