class Datatable < ActiveRecord::Base
  attr_accessible :datasource_id, :importdetail, :location, :name, :year
  belongs_to :datasource
  has_many :datatable_elements
  has_many  :dataelements, :through => :datatable_dataelements
end
