Project2::Application.routes.draw do

	# resources :registrants

	
	get 'registrants' => 'registrants#index' # list all
	# get 'rudefolks' => 'registrants#index' as: :registrants # list all




	get 'registrants/:id' => 'registrants#show' # show one
	put 'registrants/:id' => 'registrants#update' # edit a current one
	post 'registrants' => 'registrants#create' # create a new one
	patch 'registrants/:id' => 'registrants#update' # edit part of one
	delete 'registrants/:id' => 'registrants#destroy' # edit part of one


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
