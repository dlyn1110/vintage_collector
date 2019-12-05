Rails.application.routes.draw do
	#get '/collector' => 'collectors#index'

	root 'welcome#index'

	resources :users

	 get '/login' => 'sessions#new'
     post '/login' => 'sessions#create'
     delete '/logout' => 'sessions#delete'
 
  # For details on the DSL available within this file, see https://guidesrubyonrails.org/routing.html
end
