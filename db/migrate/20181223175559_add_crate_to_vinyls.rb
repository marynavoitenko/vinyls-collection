class AddCrateToVinyls < ActiveRecord::Migration[5.2]
  def change
    add_reference :vinyls, :crate, foreign_key: true
  end
end
