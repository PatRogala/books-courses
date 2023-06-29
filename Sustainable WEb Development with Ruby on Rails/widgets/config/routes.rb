Rails.application.routes.draw do
  resurces :widgets

  get 'manufacturer/:id', to: 'manufacturers#show'
end
