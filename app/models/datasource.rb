class Datasource < ActiveRecord::Base
  attr_accessible :comments, :description, :name, :website
  has_many :datatables
  searchable do 
    text :name, :website, :description
  end
  
end
