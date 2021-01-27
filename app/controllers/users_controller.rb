class UsersController < ApplicationController


    def new
        @user = User.new
    end

    def create
        u = User.new(user_params)
        if u.save
            session[:user_id] = u.id
            redirect_to '/'
        else
            flash[:alert] = "Try again"
            redirect_to '/users/signup'
        end
    end

    def login
    end

    def welcome
        @user = User.find_by_id(session[:user_id])
    end


    private

        def user_params
            params.require(:user).permit(:name, :password, :password_confirmation)
        end


end


