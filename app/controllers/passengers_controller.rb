class PassengersController < ApplicationController

  def index
    @passengers = Passenger.all
  end

  def create
    @passenger = Passenger.create(passenger_params)
    if @passenger.persisted?
      redirect_to passenger_path(@passenger.id)
    else
      render :new
    end
  end

  def new
    @passenger = Passenger.new
  end

  def show
    @passenger = Passenger.find(params[:id])
  end

  def edit
    @passenger = Passenger.find(params[:id])
  end

  def update
  end

  def destroy
    Passenger.destroy(params[:id])

    redirect_to passengers_path
  end

  private
  def passenger_params
    return params.require(:passenger).permit(:name, :phone_num)

  end

end
