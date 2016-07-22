class AddLongitudToUbication < ActiveRecord::Migration
  def change
    add_column :ubications, :longitud, :integer
  end
end
