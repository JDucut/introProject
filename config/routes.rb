Rails.application.routes.draw do

	get 'about', to: 'pages#about', as: 'about'

	resources :spells, only: [:index, :show]
	root to: 'spells#index'

	resources :schools, only: [:index, :show]

	resources :adventurer_classes, only: [:index, :show]

	  resources :search, only: [:index] do
	    collection do
	      get 'results'
	    end
	  end
end
