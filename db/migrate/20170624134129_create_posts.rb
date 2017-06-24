class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.text :content
      t.integer :user_id
      t.string :attachment
      t.datetime :created_at
      t.datetime :updated_at
      t.integer :cached_votes_up
      t.integer :comments_count
      t.text :content_html

      t.timestamps
    end
  end
end
