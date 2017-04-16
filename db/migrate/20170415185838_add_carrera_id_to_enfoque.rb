class AddCarreraIdToEnfoque < ActiveRecord::Migration[5.0]
  def change
    add_column :enfoques, :carrera_id, :integer
  end
end
