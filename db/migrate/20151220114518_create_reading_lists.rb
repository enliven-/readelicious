class CreateReadingLists < ActiveRecord::Migration
  def change
    create_table :reading_lists do |t|
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
