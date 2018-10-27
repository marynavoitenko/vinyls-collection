class CreateArtistVinyls < ActiveRecord::Migration[5.2]
  def change
    create_table :artist_vinyls do |t|
      t.integer :artist_id
      t.integer :vinyl_id

      t.timestamps
    end
  end
end
