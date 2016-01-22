class RemoveFesDataToFestivals < ActiveRecord::Migration
  def change
    remove_column :festivals, :fes_data, :string
  end
end
