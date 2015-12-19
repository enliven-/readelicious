class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.attachment :image

      t.timestamps null: false
    end
  end
end
