class AddDescripcionBiologicaToInsect < ActiveRecord::Migration
  def change
    add_column :insects, :descripcion_biologica, :text
  end
end
