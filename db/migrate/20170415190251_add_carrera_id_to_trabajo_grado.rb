class AddCarreraIdToTrabajoGrado < ActiveRecord::Migration[5.0]
  def change
    add_column :trabajo_grados, :carrera_id, :integer
  end
end
