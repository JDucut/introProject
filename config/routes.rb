Rails.application.routes.draw do
  get 'spells' => 'spells#index'
  get 'spells/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
