Rails.application.routes.draw do
  resurces :widgets, only: [:show]

  get 'manufacturer/:id', to: 'manufacturers#show'
end
