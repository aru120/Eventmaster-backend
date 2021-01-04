class Api::EventsController < ApplicationController
    skip_before_action :authorized

    def index
        events = Event.all
        render json: events
    end

    def create
        event = Event.create!(event_params)

        if event.valid?
            render json: event
        else
            render json: {error: 'failed to save event'}, status: :not_acceptable 
        end
    end 

    private

    def event_params
        params.require(:event).permit(:title, :artist, :venue, :date, :image, :ticketmasterid)
    end 

    
end