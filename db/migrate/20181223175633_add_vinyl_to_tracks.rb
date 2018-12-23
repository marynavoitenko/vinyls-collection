class AddVinylToTracks < ActiveRecord::Migration[5.2]
  def change
    add_reference :tracks, :vinyl, foreign_key: true
  end
end
