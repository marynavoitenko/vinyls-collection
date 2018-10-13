class CreateTracks < ActiveRecord::Migration[5.2]
  def change
    create_table :tracks do |t|
      t.text :title
      t.integer :vinyl_id

      t.timestamps
    end
  end
end
