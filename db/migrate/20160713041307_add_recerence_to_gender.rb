class AddRecerenceToGender < ActiveRecord::Migration
  def change
    add_reference :genders, :family, index: true, foreign_key: true
  end
end
