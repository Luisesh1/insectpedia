class AddInsectIdToUbication < ActiveRecord::Migration
  def change
    add_reference :ubications, :insect, index: true, foreign_key: true
  end
end
