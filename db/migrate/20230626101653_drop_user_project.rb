class DropUserProject < ActiveRecord::Migration[7.0]
  def up
    drop_table :user_projects
  end

  def down
    fail ActiveRecord::IrreversibleMigration
  end

end
