class Api::UsersController < ApplicationController

    def index
        users = User.all.includes(:events)
        render json: users
    end
end