class CreateStories < ActiveRecord::Migration[5.0]
  def change
    create_table :stories do |t|
      t.string :slug
      t.text :description
      t.string :reporter
      t.string :deadline
      t.date :date

      t.timestamps
    end
  end
end
