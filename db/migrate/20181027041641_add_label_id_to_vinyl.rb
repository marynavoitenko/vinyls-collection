class AddLabelIdToVinyl < ActiveRecord::Migration[5.2]
  def change
    add_column :vinyls, :label_id, :integer
  end
end
