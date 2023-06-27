class RemoveColumnToProjects < ActiveRecord::Migration[7.0]
  def up
    remove_column :projects, :task_id
  end

  def down
    add_column :projects, :task_id, :datatype
  end
end
