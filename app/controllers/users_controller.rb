class UsersController < ApplicationController

    def new
    end

    def create
        @user = User.new
        return redirect_to new_user_path unless @user.update(user_params)
        
        session[:user_id] = @user.id
        session[:name] = @user.name
        
        redirect_to welcome_path
    end

    private

    def user_params
        params.require(:user).permit(:name, :password, :password_confirmation)
    end
end
