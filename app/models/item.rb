class Item < ActiveRecord::Base
  attr_accessible :title, :description, :complete, :project_id
  belongs_to :project
  
  
  
end
