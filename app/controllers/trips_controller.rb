class TripsController < ApplicationController

  def index
    @trips = Trip.all
  end

  def shoe
    @trip = Trip.find(params[:id])
  end
end
