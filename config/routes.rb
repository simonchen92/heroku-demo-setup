# frozen_string_literal: true

Rails.application.routes.draw do
  # RESTful routes
  resources :examples, except: %i[new edit]

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'

  # Books Resource Routes
  get '/books' => 'books#index'

  # Hospital Resource Routes
  get '/patients' => 'patients#index'

  # Cafeteria Resource Routes
  get '/ingredients' => 'ingredients#index'
end
