Rails.application.routes.draw do
  resources :locations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#show'
  get 'about', to: 'home#about'
  get 'community', to: 'home#community'

end
