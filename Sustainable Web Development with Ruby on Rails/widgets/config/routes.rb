Rails.application.routes.draw do
  resources :widgets

  get "manufacturer/:id", to: "manufacturers#show"
end
