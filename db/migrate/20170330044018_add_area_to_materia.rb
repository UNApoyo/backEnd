class AddAreaToMateria < ActiveRecord::Migration[5.0]
  def change
    add_column :materia, :area, :string
  end
end
