class CreateEnfoques < ActiveRecord::Migration[5.0]
  def change
    create_table :enfoques do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
