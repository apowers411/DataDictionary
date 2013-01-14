class Dataelement < ActiveRecord::Base
  attr_accessible :analysistype, :comments, :datatype, :description, :devname, :devtable, :format, :in_house_formula, :originalname, :recode
  has_many :datatable_dataelements
  has_many :datatables, :through => :datatable_dataelements
  has_many :profilepage_dataelements
  has_many :profilepages, :through => :profilepage_dataelements  
  searchable do 
    text :devname, :originalname, :description, :ds
    string :originalname
    string :devname
    string :ds
  end
  def ds 
    if self.datatable_dataelements.first.datatable.blank?
    return "Undefined"
    else  
    self.datatable_dataelements.first.datatable.datasource.name
  end
  end

end
