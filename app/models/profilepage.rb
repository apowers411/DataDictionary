class Profilepage < ActiveRecord::Base
  attr_accessible :description, :tab, :url, :vertical
  has_many :profilepage_dataelement
  has_many :dataelements, :through => :profilepage_dataelement
  searchable do
  	text :tab, :vertical, :description, :url
  end
end
