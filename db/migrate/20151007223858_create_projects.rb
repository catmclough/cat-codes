class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :language
      t.string :title
      t.text :description
      t.string :url
      t.string :github_url
      t.date :date_of_creation

      t.timestamps null: false
    end
  end
end
