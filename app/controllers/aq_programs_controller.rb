class AqProgramsController < ApplicationController
  # GET /aq_programs
  # GET /aq_programs.json
  def index
    @aq_programs = AqProgram.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @aq_programs }
    end
  end

  # GET /aq_programs/1
  # GET /aq_programs/1.json
  def show
    @aq_program = AqProgram.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @aq_program }
    end
  end

  # GET /aq_programs/new
  # GET /aq_programs/new.json
  def new
    @aq_program = AqProgram.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @aq_program }
    end
  end

  # GET /aq_programs/1/edit
  def edit
    @aq_program = AqProgram.find(params[:id])
  end

  # POST /aq_programs
  # POST /aq_programs.json
  def create
    @aq_program = AqProgram.new(params[:aq_program])

    respond_to do |format|
      if @aq_program.save
        format.html { redirect_to @aq_program, notice: 'Aq program was successfully created.' }
        format.json { render json: @aq_program, status: :created, location: @aq_program }
      else
        format.html { render action: "new" }
        format.json { render json: @aq_program.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /aq_programs/1
  # PUT /aq_programs/1.json
  def update
    @aq_program = AqProgram.find(params[:id])

    respond_to do |format|
      if @aq_program.update_attributes(params[:aq_program])
        format.html { redirect_to @aq_program, notice: 'Aq program was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @aq_program.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aq_programs/1
  # DELETE /aq_programs/1.json
  def destroy
    @aq_program = AqProgram.find(params[:id])
    @aq_program.destroy

    respond_to do |format|
      format.html { redirect_to aq_programs_url }
      format.json { head :no_content }
    end
  end
end
