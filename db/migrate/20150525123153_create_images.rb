class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.text :comment
      t.integer :star, default: 0

      t.timestamps null: false
    end
    add_index :images, :created_at
  end
end
