class CreateBookComments < ActiveRecord::Migration[6.1]
  def change
    create_table :book_comments do |t|

      t.timestamps
      t.integer :user_id
      t.text :comment
      t.integer :book_id
    end
  end
end
