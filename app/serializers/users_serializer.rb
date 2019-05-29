class UsersSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :bike_networks
end
