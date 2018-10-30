class AddImageUrlToArtist < ActiveRecord::Migration[5.2]
  def change
    add_column :artists, :image_url, :text
  end
end
