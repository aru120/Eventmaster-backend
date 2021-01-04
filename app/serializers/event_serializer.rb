class EventSerializer < ActiveModel::Serializer
  attributes :id, :title, :artists,:venue,:date,:image, :ticketmasterid
  # has_many :users
end
