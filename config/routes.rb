Rails.application.routes.draw do
	#get '/collector' => 'collectors#index'

	root 'welcome#index'

	resources :users
	resources :collections
	

	 get '/login' => 'sessions#new'
     post '/login' => 'sessions#create'
     get '/logout' => 'sessions#delete'
 
  # For details on the DSL available within this file, see https://guidesrubyonrails.org/routing.html
end
