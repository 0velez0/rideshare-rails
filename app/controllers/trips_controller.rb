class TripsController < ApplicationController

  def index
    @trips = Trip.all
  end

  def show
    @trip = Trip.find(params[:id])
  end

  def create
    passenger = Passenger.find(params[:passenger_id])
    @trip = Trip.create_trip(passenger)
    redirect_to passenger_path(passenger.id)
  end
  #TODO check if passenger is not nil before creating trip
  #TODO check if trip is persisted? after calling create_trip

  def edit
    @trip = Trip.find(params[:id])
  end

  def update
    trip = Trip.find(params[:id])
    rating = params[:trip][:rating]
    trip.update_attributes(rating: rating)

    if trip.save
      redirect_to passenger_path(trip.passenger.id)
    end

  end

  def destroy

  end

end
