class Product < ActiveRecord::Base
  attr_accessible :inhcontact, :name, :vertical
  has_many :datasources_product
  has_many  :datasources, :through => :datasources_product
end
