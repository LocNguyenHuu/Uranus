class CreateBadgesSashes < ActiveRecord::Migration[5.0]
  def change
    create_table :badges_sashes do |t|
      t.integer :badge_id
      t.integer :sash_id
      t.boolean :notified_user
      t.datetime :create_at

      t.timestamps
    end
  end
end
