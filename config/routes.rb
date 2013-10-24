Project2::Application.routes.draw do

	#Sign in/out
	get    'login' => 'session#new', as: :login
	post   'login' => 'session#create'
	delete 'logout' => 'session#destroy',  as: :logout #delete goes to destry (just remember it)
	get    'logout' => 'session#destroy'

	# Registration
	get  'register' => 'registration#new', as: :register
	post 'register' => 'registration#create'

	# Password reset
	get 'reset/:code'=> 'password#edit', as: :reset
	put 'reset/:code'=> 'password#update'
	patch 'reset/:code'=> 'password#update' # only updates the part altered

	get 'privacy' => 'site#privacy'
	get 'terms' => 'site#terms'  # routes to the pages, calling the controller and the action on that controller

  
  root 'site#index'

end



# but we can't have people frustrated and not understand the issues