class Project < ActiveRecord::Base
  attr_accessible :title, :description, :item_ids
  has_many :items, dependent: :destroy
end
