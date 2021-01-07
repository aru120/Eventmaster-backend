class EventSerializer < ActiveModel::Serializer
  attributes :id, :title, :artists,:venue,:date,:image, :ticketmasterid,:time, :url
  # has_many :users
end
