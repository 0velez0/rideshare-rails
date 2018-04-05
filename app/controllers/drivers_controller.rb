class DriversController < ApplicationController

  def index
    @drivers = Driver.all
  end

  def create

  end

  def new
    
  end

  def show
    @driver = Driver.find(params[:id])
  end

  def edit
    @driver = Driver.find(params[:id])
  end

  def update
  end

  def destroy

  end

  def total_revenue
    fee = 1.65
    subtotal = 0 # (it's really total_revenue and starts at zero)
    driver_take_home = 0.8

    finished_trips.each do |trip|
      subtotal += trip.cost - fee
    end

    total = subtotal * driver_take_home
    return total
  end

  def average_rating
    # return if finished_trips.empty?

    total_ratings = 0
    finished_trips.each do |trip|
      total_ratings += trip.rating
    end

    average = (total_ratings.to_f) / finished_trips.length

    return average
  end

end
