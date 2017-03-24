class CreateProfesors < ActiveRecord::Migration[5.0]
  def change
    create_table :profesors do |t|
      t.string :nombre
      t.integer :oficina

      t.timestamps
    end
  end
end
