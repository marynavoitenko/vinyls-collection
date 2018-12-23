class AddLabelToVinyls < ActiveRecord::Migration[5.2]
  def change
    add_reference :vinyls, :label, foreign_key: true
  end
end
