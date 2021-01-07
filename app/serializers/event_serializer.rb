class EventSerializer < ActiveModel::Serializer
  attributes :id, :title, :artists,:venue,:date,:image, :ticketmasterid,:time, :url,:address,:city,:state,:zipcode
  # has_many :users
end
