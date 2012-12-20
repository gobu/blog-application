class CreateTables < ActiveRecord::Migration
  def change
    create_table :tables do |t|
      t.string :name
      t.integer :cellno
      t.text :content

      t.timestamps
    end
  end
end
