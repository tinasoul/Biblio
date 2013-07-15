class CreateLibraries < ActiveRecord::Migration
  def change
    create_table :libraries do |t|

      t.string "title"
      t.string "author_first_name"
      t.string "author_last_name"
      t.integer "ISBN"
      t.integer "rating"
      t.text "review"
      t.timestamps
    end
  end
end
