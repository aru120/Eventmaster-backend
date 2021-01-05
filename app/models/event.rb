class Event < ApplicationRecord
    has_many :user_events, dependent: :destroy
    belongs_to :users, through: :user_events
end
