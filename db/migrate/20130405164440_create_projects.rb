class CreateProjects < ActiveRecord::Migration
  def change 
    create_table :projects do |t|
      t.string :title, :presence => true
      t.text :descriptiion, :length => { :maximum => 1000 }

      t.timestamps
    end
  
  end
end
