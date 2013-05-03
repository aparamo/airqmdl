class Vehicle < ActiveRecord::Base
  attr_accessible :capacity, :description, :efficiency, :emissions, :name, :public, :registration_state, :registration_year, :type_id
  has_many :aq_programs, :through => :regulations
end
