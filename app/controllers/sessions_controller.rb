class SessionsController < ApplicationController

	def new

	end

	def create
      @user = User.find_by(email: params[:session][:email])
        if @user && @user.authenticate(params[:session][:password])
        session[:user_id] = @user.id
      redirect_to user_path, notice: "Logged in!"
    else
      flash.now[:alert] = "Email or password is invalid"
      render :new
     end
    end
    

	def delete
    session.clear
    redirect_to root_path
	end

  



end
