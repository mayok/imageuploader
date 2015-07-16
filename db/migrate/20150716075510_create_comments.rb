class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content
      t.references :image, index: true

      t.timestamps null: false
    end
    add_foreign_key :comments, :images
    add_index :comments, [:image_id, :created_at]
  end
end
