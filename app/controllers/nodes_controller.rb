class NodesController < ApplicationController
  respond_to :json

  def index
    respond_with Node.all
  end

  def show
    respond_with Node.find(params[:id])
  end

  def create
    respond_with Node.create(params[:node])
  end

  def update
    respond_with Node.update(params[:id], params[:node])
  end

  def destroy
    respond_with Node.destroy(params[:id])
  end
end
