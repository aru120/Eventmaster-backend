class UserSerializer < ActiveModel::Serializer
  attributes :id,:name,:username,:zipcode
  has_many :events
end
