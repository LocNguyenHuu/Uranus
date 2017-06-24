class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :event_datetime
      t.integer :user_id
      t.datetime :created_at
      t.datetime :updated_at
      t.integer :cached_votes_up
      t.integer :comments_count

      t.timestamps
    end
  end
end
