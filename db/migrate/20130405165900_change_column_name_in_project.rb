class ChangeColumnNameInProject < ActiveRecord::Migration
  def change
    rename_column :projects, :descriptiion, :description
  end
end
