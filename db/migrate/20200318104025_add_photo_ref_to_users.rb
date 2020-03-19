class AddPhotoRefToUsers < ActiveRecord::Migration[5.1]
  def change
    add_reference :users, :photo, foreign_key: true
  end
end
