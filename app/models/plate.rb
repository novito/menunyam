class Plate < ActiveRecord::Base
  attr_accessible :menu_id, :name, :type

  validates :name, :presence => true 
  validates :menu, :presence => true

  belongs_to :menu
end
