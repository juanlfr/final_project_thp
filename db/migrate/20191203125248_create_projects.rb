class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :description
      t.text :content
      t.date :date
      t.boolean :published
      t.belongs_to :admin, index: { unique: true }, foreign_key: true
      t.timestamps
    end
  end
end