class AddUserToFestivals < ActiveRecord::Migration
  def change
    add_reference :festivals, :user, index: true, foreign_key: true
  end
end
