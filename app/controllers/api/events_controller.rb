class Api::EventsController < ApplicationController
    skip_before_action :authorized

    def index
        events = Event.all
        render json: events
    end

    def show 
        event = Event.find(params[:id])
        render json: event
    end 

    def create
        event = Event.create!(event_params)

        if event.valid?
            render json: event
        else
            render json: {error: 'failed to save event'}, status: :not_acceptable 
        end
    end 

    def destroy
        event = Event.find(params[:id])
        event.destroy!
        render json: {}
    end 

    private

    def event_params
        params.require(:event).permit(:title, :venue, :date, :image, :ticketmasterid,:time, :artists => [])
    end 

    
end