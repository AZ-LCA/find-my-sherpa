class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments, :force => true, :id => false do |t|
      t.references :post
      t.foreign_key :posts,     :column => :post_id, :null => false
      t.references :user, foreign_key: true
      t.string "body", null: false
      t.timestamps
    end
  end
end
