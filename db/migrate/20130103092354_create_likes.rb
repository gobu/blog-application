class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.string :name
      t.text :comment
      t.references :table

      t.timestamps
    end
    add_index :likes, :table_id
  end
end
