class CreateReadingListItems < ActiveRecord::Migration
  def change
    create_table :reading_list_items do |t|
      t.integer :book_id
      t.integer :reading_list_id
      t.integer :status

      t.timestamps null: false
    end
  end
end
