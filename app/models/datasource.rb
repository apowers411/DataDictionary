class Datasource < ActiveRecord::Base
  attr_accessible :comments, :description, :name, :website, :lastupdate, :method
  has_many :datatables
  
  searchable do 
    text :name, :website, :description
  end
  
end
