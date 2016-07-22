class ChangeTiposToUbication < ActiveRecord::Migration
   def up
    change_column :ubications, :latitud, :decimal
    change_column :ubications, :longitud, :decimal
  end

  def down
    change_column :ubications, :latitud, :integer
    change_column :ubications, :longitud, :integer
  end
end
