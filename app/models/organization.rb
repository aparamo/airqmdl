class Organization < ActiveRecord::Base
  attr_accessible :contact_id, :name, :organization_type
  has_many :financiations
  has_many :aq_programs, :through => :financiations
end
