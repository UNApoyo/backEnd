class AddCarreraIdToEstudiante < ActiveRecord::Migration[5.0]
  def change
    add_column :estudiantes, :carrera_id, :integer
  end
end
