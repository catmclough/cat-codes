class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :language
      t.string :title
      t.text :description
      t.date :date_of_creation

      t.timestamps null: false
    end
  end
end
