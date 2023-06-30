Rails.application.routes.draw do
  resources :widgets, only: %i[index show]
  resources :widget_ratings, only: [:create]

  namespace :customer_service do
    resources :widgets, only: %i[show update destroy]
  end

  ####
  # Custom routes start here
  #
  # For each new custom route:
  #
  # * Be sure you have the canonical route declared above
  # * Add the new custom route below the existing ones
  # * Document why it's needed
  # * Explain anything else non-standard

  # Used in podcast ads for the 'amazing' campaign
  get '/amazing', to: redirect('/widgets')
end
