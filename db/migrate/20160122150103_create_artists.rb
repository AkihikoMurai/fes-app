class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.references :festival, index: true, foreign_key: true
      t.string :musician

      t.timestamps null: false
    end
  end
end
