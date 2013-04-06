class CreateItemsTable < ActiveRecord::Migration
  def change 
    create_table :items do |t|
      t.string :title
      t.text :description
      t.integer :complete, :default => 0
      t.integer :project_id

      t.timestamps
    end
  end
end
