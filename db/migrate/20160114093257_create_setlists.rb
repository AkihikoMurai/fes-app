class CreateSetlists < ActiveRecord::Migration
  def change
    create_table :setlists do |t|
      t.references :festival, index: true, foreign_key: true
      t.string :artist
      t.string :music1
      t.string :music2
      t.string :music3
      t.string :music4
      t.string :music5
      t.string :music6
      t.string :music7
      t.string :music8
      t.string :music9
      t.string :music10

      t.timestamps null: false
    end
  end
end
