Rails.application.routes.draw do
  root 'snippets#index'
  
  resources :snippets
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
