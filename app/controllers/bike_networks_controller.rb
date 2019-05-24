class BikeNetworksController < ApplicationController
  
  def show
    bike_network = BikeNetwork.find(params[:id])

    render json: bike_network
  end

  def new
    bike_network = BikeNetwork.new

    render json: bike_network
  end

  def create
    bike_network = BikeNetwork.create(bike_network_params)

    if !bike_network.valid?
      bike_network = bike_network.errors.full_messages
    end

    render json: bike_network
  end

  private

  def bike_network_params
    params.require(:bike_network).permit(:name)
  end

end
