class TripsController < ApplicationController

  def index
    @trips = Trip.all
  end

  def create

  end

  def new
    
  end

  def show
    @trip = Trip.find(params[:id])
  end

  def edit
    @trip = Trip.find(params[:id])
  end

  def update

  end

  def destroy

  end

end