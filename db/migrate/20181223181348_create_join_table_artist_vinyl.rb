class CreateJoinTableArtistVinyl < ActiveRecord::Migration[5.2]
  def change
    create_join_table :artists, :vinyls do |t|
      # t.index [:artist_id, :vinyl_id]
      # t.index [:vinyl_id, :artist_id]
      t.timestamps
    end
  end
end
