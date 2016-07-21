class AddInsectIdToImages < ActiveRecord::Migration
  def change
    add_reference :images, :insect, index: true, foreign_key: true
  end
end
