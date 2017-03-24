class CreateTrabajoGrados < ActiveRecord::Migration[5.0]
  def change
    create_table :trabajo_grados do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
