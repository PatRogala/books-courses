Rails.application.routes.draw do
  root 'greetings#index'
  resources :greetings
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
