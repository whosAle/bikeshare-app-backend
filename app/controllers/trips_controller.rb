class TripsController < ApplicationController

  before_action :find_trip, only: [:show, :edit, :update]

  def show
    trip = Trip.find(params[:id])
    render json: trip
  end

  def new
    trip = Trip.new

    render json: trip
  end

  def create
    pm = params.require(:bike_network).permit(:name, :location, :company, :num_of_stations, :free_bikes)
    bn = BikeNetwork.create(pm)
    # byebug
    network_id = bn.id
    # trip = Trip.create(trip_params(:user_id, bike_network_id: bn.id, :times_used, :start_time, :end_time))
    trip = Trip.create(user_id: params[:trip][:user_id], bike_network_id: network_id )

    if !trip.valid?
      trip = trip.errors.full_messages
    end

    render json: bn
  end


  def update
    trip.update(trip_params(:times_used, :start_time, :end_time))
    if !trip.valid?
      trip = trip.errors.full_messages
    end

    render json: trip
  end

  def destroy
    trip.destroy

    render json: trip
  end

  private

  def trip_params(*args)
    params.require(:trip).permit(args)
  end

  def find_trip
    trip = Trip.find(params[:id])
  end
end
