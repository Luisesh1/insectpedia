class CreateMunicipalities < ActiveRecord::Migration
  def change
    create_table :municipalities do |t|
      t.string :descripcion

      t.timestamps null: false
    end
  end
end
