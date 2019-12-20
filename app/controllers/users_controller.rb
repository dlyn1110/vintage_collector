class UsersController < ApplicationController
	

	def index
		@users = User.all
	end

	def new
	  @user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			session[:user_id] = @user.id 
			redirect_to user_path(@user)
		else
			render '/user/new'
		end
	  end


	def show 
		if logged_in?
			find_user
		else
			redirect_to root_path
		end
	end

	def edit
		find_user
		if !current_user
			redirect_to root_path
		end
	end

	def update
		find_user
		if @user.update(user_params)
			flash[:notice] = "Successfully updated profile"
			redirect_to user_path(@user)
		else
			flash[:notice] = @user.errors.full_messages
			redirect_to '/login'
		end
	end

	def destroy
	  if current_user
	  	#user.destroy
	  	#flash[:notice] = "Successfully deleted profile"
	  	@user = User.find(params[:id])
	  	@user.destroy

	  	redirect_to users_path
	  else
	  	redirect_to 'login'
	  end
	end


	private
	
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

    def find_user
    	@user = User.find(params[:id])
    end

end
