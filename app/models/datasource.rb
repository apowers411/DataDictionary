class Datasource < ActiveRecord::Base
  attr_accessible :comments, :description, :name, :website, :productid, :lastupdate, :method
  has_many :datatables
  belongs_to :products
  searchable do 
    text :name, :website, :description
  end
  
end
