class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string "activity", null: false
      t.references :user, null: false
      t.string "info"
      t.timestamps
    end
  end
end
