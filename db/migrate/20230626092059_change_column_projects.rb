class ChangeColumnProjects < ActiveRecord::Migration[7.0]
  def up
    remove_column :projects, :band_id
  end

  def down
    add_column :projects, :band_id, :datatype
  end
end
