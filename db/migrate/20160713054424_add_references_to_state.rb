class AddReferencesToState < ActiveRecord::Migration
  def change
    add_reference :states, :biome, index: true, foreign_key: true
  end
end
