class Trip < ApplicationRecord
  belongs_to :bike_network
  belongs_to :user
end
