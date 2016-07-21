class AddAttachToImage < ActiveRecord::Migration
  def change
    add_attachment :images,:cover
  end
end
