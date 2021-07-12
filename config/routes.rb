Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#home'

  #foods
  resources :foods, only: %i(new create index destroy edit update) do
  end

  #dishes
  resources :dishes do
    resources :ingredients, only: %i(new create destroy ) 
  end

end