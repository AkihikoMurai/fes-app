class RemoveFestivalFromSetlists < ActiveRecord::Migration
  def change
    remove_reference :setlists, :festival, index: true, foreign_key: true
  end
end
