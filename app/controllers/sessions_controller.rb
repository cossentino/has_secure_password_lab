class SessionsController < ApplicationController

    def create
        u = User.find_by(name: params[:user][:name])
        if !!u
            if u.authenticate(params[:user][:password])
                session[:user_id] = u.id
            else
                flash[:alert] = "wrong password"
                redirect_to '/users/login'
            end
        else
            redirect_to '/users/login'
        end
    end





    private

    def user_params
        params.require(:user).permit(:name, :password, :password_confirmation)
    end

end
