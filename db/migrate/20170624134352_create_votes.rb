class CreateVotes < ActiveRecord::Migration[5.0]
  def change
    create_table :votes do |t|
      t.string :votable_type
      t.integer :votable_id
      t.string :voter_type
      t.integer :voter_id
      t.boolean :vote_flag
      t.string :vote_scope
      t.integer :vote_weight
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
