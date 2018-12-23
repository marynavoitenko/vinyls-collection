class CreateJoinTableGenreVinyl < ActiveRecord::Migration[5.2]
  def change
    create_join_table :genres, :vinyls do |t|
      # t.index [:genre_id, :vinyl_id]
      # t.index [:vinyl_id, :genre_id]
      t.timestamps
    end
  end
end
