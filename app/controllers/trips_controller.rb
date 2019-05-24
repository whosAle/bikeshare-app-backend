class TripsController < ApplicationController

  before_action :find_trip, only: [:edit, :update]

  def new
    # session[:activity_id] ||= params[:format]
    trip = Trip.new

    render json: trip
  end

  def create
    trip = trip.create(trip_params(:user_id, :bike_network_id, :times_used, :start_time, :end_time))

    if !trip.valid?
      trip = trip.errors.full_messages
    end

    render json: trip
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
    trip = trip.find(params[:id])
  end
end
