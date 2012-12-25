class Product < ActiveRecord::Base
  attr_accessible :inhcontact, :name, :vertical
  
  has_many :datasources
    
end
