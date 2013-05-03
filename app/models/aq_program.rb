class AqProgram < ActiveRecord::Base
  attr_accessible :aq_type_id, :date_of_creation, :description, :locale, :name, :public, :vehicle_ids, :organization_ids
  	has_many :regulations
    has_many :vehicles, :through => :regulations
    has_many :financiations
    has_many :organizations, :through => :financiations
end
