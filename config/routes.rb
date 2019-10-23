Rails.application.routes.draw do
	get '/hello_world' => 'collectors#home'
	
 
  # For details on the DSL available within this file, see https://guidesrubyonrails.org/routing.html
end
