# frozen_string_literal: true

Rails.application.routes.draw do
  # RESTful routes
  resources :examples, except: %i[new edit]

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'

  # Appointment Resources Routes
  resources :appointments, except: %i[new edit]

  # Author Resource Routes
  resources :authors, except: %i[new edit]

  # Borrowers Resource Routes
  resources :borrowers, except: %i[new edit]

  # Doctor Resource Routes
  resources :doctors, except: %i[new edit]

  # Loans Resources Routes
  resources :loans, except: %i[new edit]

  # Meal Resources Routes
  resources :meals, except: %i[new edit]

  # Recipe Resource Routes
  resources :recipes, except: %i[new edit]

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
  resources :ingredients, except: %i[new edit]
  # get '/ingredients' => 'ingredients#index'
  # get '/ingredients/:id' => 'ingredients#show'
  # post '/ingredients' => 'ingredients#create'
  # patch '/ingredients/:id' => 'ingredients#update'
  # delete '/ingredients/:id' => 'ingredients#destroy'
end
