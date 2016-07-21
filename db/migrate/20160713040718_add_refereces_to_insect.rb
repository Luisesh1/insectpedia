class AddReferecesToInsect < ActiveRecord::Migration
  def change
    add_reference :insects, :order, index: true, foreign_key: true
    add_reference :insects, :family, index: true, foreign_key: true
    add_reference :insects, :gender, index: true, foreign_key: true
  end
end
