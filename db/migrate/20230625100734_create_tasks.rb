class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.date :limit_date
      t.string :status

      t.timestamps
    end
  end
end
