class Api::UsersController < ApplicationController
    skip_before_action :authorize, only: [:create]

    def index
        users = User.all.includes(:events)
        render json: users
    end

    def create 
        @user = User.create!(user_params)

        if @user.valid?
            render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
        else
            render json: {error: 'failed to create user'}, status: :not_acceptable 
        end
    end 

    def profile
        render json: {user: current_user}, status: :accepted
    end

    private
    def user_params
        params.require(:user).permit(:username, :password, :name, :zipcode)
    end
end