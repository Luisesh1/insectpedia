class CreateBiomes < ActiveRecord::Migration
  def change
    create_table :biomes do |t|
      t.string :descripcion

      t.timestamps null: false
    end
  end
end
