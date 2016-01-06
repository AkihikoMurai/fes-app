class CreateFestivals < ActiveRecord::Migration
  def change
    create_table :festivals do |t|
      t.string :fes_name
      t.string :fes_place
      t.string :fes_data
      t.string :artist

      t.timestamps null: false
    end
  end
end
