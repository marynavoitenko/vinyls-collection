class RemoveLabelFromVinyl < ActiveRecord::Migration[5.2]
  def change
    remove_column :vinyls, :label, :text
  end
end
