Project2::Application.routes.draw do

	#Sign in/out
	get    'login' => 'session#new'
	post   'login' => 'session#create'
	delete 'logout' => 'session#destroy'  #delete goes to destry (just remember it)
	get    'logout' => 'session#destroy'

	# Registration
	get  'register' => 'registration#new'
	post 'register' => 'registration#create'

	# Password reset
	get 'reset/:code'=> 'password#edit'
	put 'reset/:code'=> 'password#update'
	patch 'reset/:code'=> 'password#update' # only updates the part altered




	get 'privacy' => 'site#privacy'
	get 'terms' => 'site#terms'  # routes to the pages, calling the controller and the action on that controller

  
  root 'site#index'

end
