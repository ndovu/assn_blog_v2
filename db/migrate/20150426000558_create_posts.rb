class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.references :user
      t.references :favourite
      t.references :tag
      t.references :user
      t.references :comment

      t.timestamps null: false
    end
  end
end
