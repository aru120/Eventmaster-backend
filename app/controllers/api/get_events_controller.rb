
class Api::GetEventsController < ApplicationController


    def index
        response = RestClient.get("https://app.ticketmaster.com/discovery/v2/events.json?city=New%20York&countryCode=US&segmentName=music&apikey=#{ENV['TM_KEY']}")
        events = JSON.parse(response)
        render json: events
    end
end