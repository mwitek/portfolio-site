class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.string :url, limit: 2083
      t.timestamps null: false
    end
  end
end
