class Event < ApplicationRecord
    has_many :user_events, dependent: :destroy
    has_and_belongs_to_many :users, through: :user_events
end
