class AddPhotoToInsect < ActiveRecord::Migration
  def change
    add_attachment :insects,:cover
  end
end
