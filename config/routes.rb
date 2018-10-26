Rails.application.routes.draw do

	resources :spells, only: [:index, :show]
	root to: 'spells#index'

	resources :schools, only: [:index, :show]
	root to: 'schools#index'

	resources :adventurer_classes, only: [:index, :show]
	root to: 'adventurer_classes#index'
end
