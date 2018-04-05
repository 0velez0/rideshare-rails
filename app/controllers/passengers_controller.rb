class PassengersController < ApplicationController

def index
  @passengers = Passenger.all
end

def create

end

def new
  
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

end



end
