class CreateParts < ActiveRecord::Migration
  def change
    create_table :parts do |t|
      t.string :descripcion

      t.timestamps null: false
    end
  end
end
