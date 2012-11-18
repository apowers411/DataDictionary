class Profilepage < ActiveRecord::Base
  attr_accessible :description, :tab, :url, :vertical
  has_many :profilepage_dataelements
  has_many :dataelements, :through => :profilepage_dataelements
end
