class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :descripcion

      t.timestamps null: false
    end
  end
end
