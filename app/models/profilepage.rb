class Profilepage < ActiveRecord::Base
  attr_accessible :description, :tab, :url, :vertical
  has_many :profilepage_dataelements
  has_many :dataelements, :through => :profilepage_dataelements
  searchable do
  	text :tab, :vertical, :description, :url
  end
end
