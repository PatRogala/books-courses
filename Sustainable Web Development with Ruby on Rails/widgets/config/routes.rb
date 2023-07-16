Rails.application.routes.draw do
  resources :widgets, only: [ :show ]

  get "manufacturer/:id", to: "manufacturers#show"
end
