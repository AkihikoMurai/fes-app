class AddFesDateToFestivals < ActiveRecord::Migration
  def change
    add_column :festivals, :fes_date, :date
  end
end
