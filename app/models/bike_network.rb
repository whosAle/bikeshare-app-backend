class BikeNetwork < ApplicationRecord
  has_many :trips#, dependent: :destroy
  has_many :users, through: :trips
end
