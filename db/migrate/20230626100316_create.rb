class Create < ActiveRecord::Migration[7.0]
  def change
    create_table :userProjects do |t|
      t.references :user, index: true, foreign_key: true
      t.references :project, index: true, foreign_key: true

    end
  end
end
