Project2::Application.routes.draw do

  # get "messages/index"
  # get "messages/show"
  # get "messages/new"
  # get "messages/create"
  # get "messages/destroy"
  # get "users/show"
  # get "messages/new"
  # get "messages/show"
  # get "gifts/new"
	#Sign in/out
	get    'login' => 'session#new', as: :login
	post   'login' => 'session#create'
	delete 'logout' => 'session#destroy', as: :logout #delete goes to destroy (just remember it)
	# get    'logout' => 'session#destroy'

	# Registration
	get  'register/:code' => 'registration#new', as: :register
	post 'register/:code' => 'registration#create'
	# get 'register'  => 'registration#index'

	# Password reset
	get 'reset/:code'=> 'password#edit', as: :reset
	put 'reset/:code'=> 'password#update'
	patch 'reset/:code'=> 'password#update' # only updates the part altered

	get 'privacy' => 'site#privacy'
	get 'terms' => 'site#terms'  # routes to the pages, calling the controller and the action on that controller

  # get 'gift/:id' =>  'gift#show', as: :gifts
  # get 'gifts' =>  'gift#index'
  # get '/gifts/:id/edit' => 'gift#edit'
  
  # Should probably remove the nested routes for gifts/messages, nesting them inside the user is better for listing all messages.
  resources :gifts do
    resources :messages, only: [:index, :show, :new, :create, :destroy]
  end
  

  resources :users, only: [:show] do
    resources :messages, only: [:index, :show, :new, :create, :destroy]
  end


  get 'home' => 'site#index' # easter egg, Wizard People, Dear Reader quotes
  root 'gifts#index'

end