class CreateUbications < ActiveRecord::Migration
  def change
    create_table :ubications do |t|
      t.integer :latitud
      t.integer :altitud

      t.timestamps null: false
    end
  end
end
