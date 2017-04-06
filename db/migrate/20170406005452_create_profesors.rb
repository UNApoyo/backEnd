class CreateProfesors < ActiveRecord::Migration[5.0]
  def change
    create_table :profesors do |t|
      t.string :nombre
      t.string :info

      t.timestamps
    end
  end
end
