class AddReferencia3dToInsect < ActiveRecord::Migration
  def change
    add_column :insects, :modelo, :string
  end
end
