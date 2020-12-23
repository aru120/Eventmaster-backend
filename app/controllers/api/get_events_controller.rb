
class Api::GetEventsController < ApplicationController


    def index
       
        response = HTTParty.get(`https://app.ticketmaster.com/discovery/v2/events?apikey=#{ENV['TM_KEY']}&locale=*&size=10&page=1&city=New%20York&countryCode=US&segmentName=music`, format: :plain)
        render json: response.body
    end
end