class AddRecerenceToFamily < ActiveRecord::Migration
  def change
    add_reference :families, :order, index: true, foreign_key: true
  end
end
