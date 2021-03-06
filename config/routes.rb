Rails.application.routes.draw do
  resources :presences
  resources :departments
  resources :companies, only: [:show,:edit, :update]
  resources :users
	root 'sessions#new'
    get 'login', to: 'sessions#new'
	post 'login', to: 'sessions#create'
	delete 'logout', to: 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
