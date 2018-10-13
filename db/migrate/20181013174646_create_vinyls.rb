class CreateVinyls < ActiveRecord::Migration[5.2]
  def change
    create_table :vinyls do |t|

      t.timestamps
    end
  end
end
