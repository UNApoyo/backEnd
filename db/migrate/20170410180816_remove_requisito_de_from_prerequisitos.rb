class RemoveRequisitoDeFromPrerequisitos < ActiveRecord::Migration[5.0]
  def change
    remove_column :prerequisitos, :requisito_de, :integer
  end
end
