class CreateVinyls < ActiveRecord::Migration[5.2]
  def change
    create_table :vinyls do |t|
      t.text :code
      t.text :label
      t.text :name
      t.integer :crate_id

      t.timestamps
    end
  end
end
