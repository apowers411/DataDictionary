class Datasource < ActiveRecord::Base
  attr_accessible :comments, :description, :name, :website
  has_many :datatables
end
