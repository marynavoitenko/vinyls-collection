class AddImageUrlAndReleaseDateToVinyls < ActiveRecord::Migration[5.2]
  def change
    add_column :vinyls, :image_url, :text
    add_column :vinyls, :release_date, :date
  end
end
