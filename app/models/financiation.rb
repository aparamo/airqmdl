class Financiation < ActiveRecord::Base
  attr_accessible :description, :financiation_type, :name, :organization_id, :aq_program_id
  belongs_to :organization
  belongs_to :aq_program
end
