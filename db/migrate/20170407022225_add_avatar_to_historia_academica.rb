class AddAvatarToHistoriaAcademica < ActiveRecord::Migration[5.0]
  def change
    add_column :historia_academicas, :avatar, :string
  end
end
