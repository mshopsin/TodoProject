class CreateTeamTable < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name, :presence => true

      t.timestamps
    end
  end
end
