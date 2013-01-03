class Datatable < ActiveRecord::Base
  attr_accessible :datasource_id, :importdetail, :location, :name, :year, :description
  belongs_to :datasource
  has_many :datatable_elements
  has_many  :dataelements, :through => :datatable_dataelements
  searchable do
    text :name, :description, :location
  end
  
end
