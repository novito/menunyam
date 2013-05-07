class Menu < ActiveRecord::Base
  attr_accessible :date, :name, :restaurant_id

  validates :name, :presence => true 
  validates :date, :presence => true 
  validates :restaurant, :presence => true

  belongs_to :restaurant
end
