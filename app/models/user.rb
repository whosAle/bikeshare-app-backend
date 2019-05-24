class User < ApplicationRecord
  has_many :trips#, dependent: :destroy
  has_many :bike_networks, through: :trips
end
