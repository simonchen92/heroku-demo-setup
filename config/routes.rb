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
  resources :books, except: %i[new edit]
  # get '/books' => 'books#index'
  # get '/books/:id' => 'books#show'
  # post '/books' => 'books#create'
  # patch '/books/:id' => 'books#update'
  # delete '/books/:id' => 'books#destroy'

  # Hospital Resource Routes
  resources :patients, except: %i[new edit]
  # get '/patients' => 'patients#index'
  # get '/patients/:id' => 'patients#show'
  # post '/patients' => 'patients#create'
  # patch '/patients/:id' => 'patients#update'
  # delete '/patients/:id' => 'patients#destroy'

  # Cafeteria Resource Routes
  get '/ingredients' => 'ingredients#index'
  get '/ingredients/:id' => 'ingredients#show'
  post '/ingredients' => 'ingredients#create'
  patch '/ingredients/:id' => 'ingredients#update'
end
