class Api::UserEventsController < ApplicationController
    skip_before_action :authorized, only: [:create]

    def index
        user_events = UserEvent.all
        render json: user_events
    end

    def create
        user_event = UserEvent.create!(user_event_params)

        if user_event.valid?
            render json: user_event
        else
            render json: {error: 'failed to save event'}, status: :not_acceptable 
        end
    end 

    private

    def user_event_params
        params.require(:user_event).permit(:user_id, :event_id)
    end 

    
end