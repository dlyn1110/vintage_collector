class UsersController < ApplicationController

	def new
	  @users = User.new
	end

	def create
		@user = User.new
	     
	end
end
