class AddCodigoToMateria < ActiveRecord::Migration[5.0]
  def change
    add_column :materia, :codigo, :integer
  end
end
