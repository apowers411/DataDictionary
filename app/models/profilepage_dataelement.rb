class ProfilepageDataelement < ActiveRecord::Base
  attr_accessible :comments, :dataelement_id, :devformula, :lastupdated, :profilepage_id
  belongs_to :dataelement
  belongs_to :profilepage
end
