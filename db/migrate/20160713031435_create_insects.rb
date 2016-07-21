class CreateInsects < ActiveRecord::Migration
  def change
    create_table :insects do |t|
      t.string :nombre
      t.string :genero
      t.string :especie

      t.timestamps null: false
    end
  end
end
