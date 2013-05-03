class Regulation < ActiveRecord::Base
  attr_accessible :aq_program_id, :description, :name, :regulation_type, :vehicle_id
  belongs_to :vehicle
  belongs_to :aq_program
end
