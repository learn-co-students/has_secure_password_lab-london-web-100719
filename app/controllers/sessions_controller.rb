class SessionsController < ApplicationController

    def new
    end

    def create
        user = User.find_by(params[:id])
        return head(:forbidden) unless user.authenticate(params[:user][:password])
        session[:user_id] = user.id
        redirect_to "/welcome/hello"
    end

    def destroy
        session.delete :user_id
        redirect_to sessions_new_path
    end

end
