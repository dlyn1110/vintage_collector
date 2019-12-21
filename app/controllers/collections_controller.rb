class CollectionsController < ApplicationController

    def index
    	@collections = Collection.all
  	end

  	def new
  	end

  	def create
  		@collection = current_user.collections.build(collection_params)
  		
  	end

  	def destroy
  	end 

  	private

  	def collection_params
  		params.require()
  	end



end
