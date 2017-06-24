class CreateAttachments < ActiveRecord::Migration[5.0]
  def change
    create_table :attachments do |t|
      t.string :file_name
      t.string :attachable_type
      t.integer :attachable_id
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
