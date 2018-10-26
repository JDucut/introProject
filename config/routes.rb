Rails.application.routes.draw do
  
  # get 'adventurer_classes/index'
  # get 'adventurer_classes/show'
  # get 'school/index'
  # get 'school/show'
	resources :spells, only: [:index, :show]
	root to: 'spells#index'

	resources :schools, only: [:index, :show]
	root to: 'schools#index'

	resources :adventurer_classes, only: [:index, :show]
	root to: 'adventurer_classes#index'
  # get 'spells' => 'spells#index'
  # get 'spells/:name', to: 'spells#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
