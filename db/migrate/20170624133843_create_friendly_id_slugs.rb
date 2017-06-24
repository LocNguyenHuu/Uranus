class CreateFriendlyIdSlugs < ActiveRecord::Migration[5.0]
  def change
    create_table :friendly_id_slugs do |t|
      t.string :slug
      t.integer :sluggable_id
      t.string :sluggable_type
      t.string :scope
      t.datetime :created_at

      t.timestamps
    end
  end
end
