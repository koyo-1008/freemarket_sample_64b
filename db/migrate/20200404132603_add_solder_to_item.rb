class AddSolderToItem < ActiveRecord::Migration[5.0]
  def change
    add_reference :items, :solder, foreign_key:{ to_table: :users }
  end
end
