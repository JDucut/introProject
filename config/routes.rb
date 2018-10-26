Rails.application.routes.draw do
	resources :spells, only: [:index, :show]

	root to: 'spells#index'
  # get 'spells' => 'spells#index'
  # get 'spells/:name', to: 'spells#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
