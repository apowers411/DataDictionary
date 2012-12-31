class DatasourcesProduct < ActiveRecord::Base
  attr_accessible :datasource_id, :product_id
  belongs_to :datasource
  belongs_to :product
end
