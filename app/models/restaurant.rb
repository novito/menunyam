class Restaurant < ActiveRecord::Base
  attr_accessible :city_id, :name

  validates :name, :presence => true 

  belongs_to :city
end
