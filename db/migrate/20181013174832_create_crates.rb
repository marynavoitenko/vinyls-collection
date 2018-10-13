class CreateCrates < ActiveRecord::Migration[5.2]
  def change
    create_table :crates do |t|
      t.text :name
      t.text :description

      t.timestamps
    end
  end
end
