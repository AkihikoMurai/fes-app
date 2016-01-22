class AddFesNameToIndexFestivals < ActiveRecord::Migration
  def change
    add_index :festivals, :fes_name, unique: true
  end
end
