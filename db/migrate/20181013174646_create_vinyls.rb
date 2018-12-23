class CreateVinyls < ActiveRecord::Migration[5.2]
  def change
    create_table :vinyls do |t|
      t.text :name
      t.text :code
      t.text :image_url
      t.date :release_date

      t.timestamps
    end
  end
end
