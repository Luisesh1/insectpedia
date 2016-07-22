class RemoveAltitudToUbication < ActiveRecord::Migration
  def change
    remove_column :ubications, :altitud, :string
  end
end
