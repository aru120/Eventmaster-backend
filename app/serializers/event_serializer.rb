class EventSerializer < ActiveModel::Serializer
  attributes :id, :title, :artists,:venue,:date,:image
  # has_many :users
end
