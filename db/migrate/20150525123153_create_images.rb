class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.text :comment
      t.integer :star

      t.timestamps null: false
    end
  end
end
