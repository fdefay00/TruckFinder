class TrucksController < ApplicationController
  
  # GET /trucks
  # GET /trucks.json
  def index
    @trucks = Truck.all
  end
  
  def new
    @truck = Truck.new
  end
  
  def show
    @truck = Truck.find(params[:id])
  end
  
  
end
