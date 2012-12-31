class Datasource < ActiveRecord::Base
  attr_accessible :comments, :description, :name, :website, :lastupdate, :method
  has_many :datatables
  has_many :datasources_products
  has_many  :products, :through => :datasources_product
  searchable do 
    text :name, :website, :description
  end
  
end
