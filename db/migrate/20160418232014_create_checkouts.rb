class CreateCheckouts < ActiveRecord::Migration
  def change
    create_table :checkouts do |t|
      t.integer :reader_id, null: false
      t.integer :book_id, null: false

      t.timestamps null: false
    end
  end
end
