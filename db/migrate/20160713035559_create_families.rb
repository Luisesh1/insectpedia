class CreateFamilies < ActiveRecord::Migration
  def change
    create_table :families do |t|
      t.string :descripcion

      t.timestamps null: false
    end
  end
end
