class AddCodigoToCarrera < ActiveRecord::Migration[5.0]
  def change
    add_column :carreras, :codigo, :integer
  end
end
