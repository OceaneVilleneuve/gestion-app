class ChangeColumnUsers < ActiveRecord::Migration[7.0]
  def up
    remove_column :users, :band_id
  end

  def down
    add_column :users, :band_id, :datatype
  end
end
