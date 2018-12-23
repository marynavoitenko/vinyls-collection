class CreateJoinTableArtistTrack < ActiveRecord::Migration[5.2]
  def change
    create_join_table :artists, :tracks do |t|
      # t.index [:artist_id, :track_id]
      # t.index [:track_id, :artist_id]
      t.timestamps
    end
  end
end
