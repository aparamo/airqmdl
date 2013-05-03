class FinanciationsController < ApplicationController
  # GET /financiations
  # GET /financiations.json
  def index
    @financiations = Financiation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @financiations }
    end
  end

  # GET /financiations/1
  # GET /financiations/1.json
  def show
    @financiation = Financiation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @financiation }
    end
  end

  # GET /financiations/new
  # GET /financiations/new.json
  def new
    @financiation = Financiation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @financiation }
    end
  end

  # GET /financiations/1/edit
  def edit
    @financiation = Financiation.find(params[:id])
  end

  # POST /financiations
  # POST /financiations.json
  def create
    @financiation = Financiation.new(params[:financiation])

    respond_to do |format|
      if @financiation.save
        format.html { redirect_to @financiation, notice: 'Financiation was successfully created.' }
        format.json { render json: @financiation, status: :created, location: @financiation }
      else
        format.html { render action: "new" }
        format.json { render json: @financiation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /financiations/1
  # PUT /financiations/1.json
  def update
    @financiation = Financiation.find(params[:id])

    respond_to do |format|
      if @financiation.update_attributes(params[:financiation])
        format.html { redirect_to @financiation, notice: 'Financiation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @financiation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /financiations/1
  # DELETE /financiations/1.json
  def destroy
    @financiation = Financiation.find(params[:id])
    @financiation.destroy

    respond_to do |format|
      format.html { redirect_to financiations_url }
      format.json { head :no_content }
    end
  end
end
