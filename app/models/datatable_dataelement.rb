class DatatableDataelement < ActiveRecord::Base
  attr_accessible :dataelement_id, :datatable_id
  belongs_to :dataelement
  belongs_to :datatable
end
