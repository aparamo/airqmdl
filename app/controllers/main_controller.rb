class MainController < ApplicationController
  def index
  	@aq_programs = AqProgram.all
  	@organizations = Organization.all
  	@vehicles = Vehicle.all
  end
end
