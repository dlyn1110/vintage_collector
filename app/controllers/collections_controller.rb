class CollectionsController < ApplicationController

    def index
    	@collections = Collection.all
  	end

  	def new
      @collection = Collection.new
  	end

  	def create
  		@user = User.find(params[:id]
      @collection = @user.collections.create(collection_params)
      redirect_to user_path(@user)
  		
  	end

  	def destroy
  	end 

  	private

  	def collection_params
  		params.require(:collection).permit(:item_name, :description)
  	end



end
