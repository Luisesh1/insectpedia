class CreateBiomeInsects < ActiveRecord::Migration
  def change
    create_table :biome_insects do |t|
      t.references :insect, index: true, foreign_key: true
      t.references :biome, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
