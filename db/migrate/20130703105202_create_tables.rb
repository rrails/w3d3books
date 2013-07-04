class CreateTables < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name
      t.date   :dob
      t.text  :image
      t.string :bio
      t.timestamps
    end
    create_table :books do |t|
      t.string :title
      t.string  :author_name
      t.string  :genre
      t.text :image
      t.integer :author_id
      t.timestamps
    end
  end
end