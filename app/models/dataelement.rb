class Dataelement < ActiveRecord::Base
  attr_accessible :analysistype, :comments, :datatype, :description, :devname, :devtable, :format, :in_house_formula, :originalname, :recode
  has_many :datatable_dataelements
  has_many :profilepage_dataelements
end
