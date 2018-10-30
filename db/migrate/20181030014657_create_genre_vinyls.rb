class CreateGenreVinyls < ActiveRecord::Migration[5.2]
  def change
    create_table :genre_vinyls do |t|
      t.integer :genre_id
      t.integer :vinyl_id

      t.timestamps
    end
  end
end
