Rails.application.routes.draw do
	#get '/collector' => 'collectors#index'

	root 'welcome#index'

	resources :users
	
 
  # For details on the DSL available within this file, see https://guidesrubyonrails.org/routing.html
end
