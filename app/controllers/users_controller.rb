class UsersController < ApplicationController

	def index
	end

	def new
	  @users = User.new
	end

	def create
		@user = User.new()
	     
	end


	def show 
	end
end
