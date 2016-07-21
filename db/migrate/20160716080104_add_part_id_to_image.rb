class AddPartIdToImage < ActiveRecord::Migration
  def change
    add_reference :images, :part, index: true, foreign_key: true
  end
end
