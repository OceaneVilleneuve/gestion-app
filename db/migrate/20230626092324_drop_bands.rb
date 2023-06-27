class DropBands < ActiveRecord::Migration[7.0]
  def up
    drop_table :bands
  end

  def down
    fail ActiveRecord::IrreversibleMigration
  end
end
