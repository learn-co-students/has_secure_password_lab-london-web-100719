class WelcomeController < ApplicationController

    def hello
        @user = User.find_by(params[:id])
        redirect_to "/sessions/new" unless current_user
    end
    
end