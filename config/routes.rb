Temployees::Application.routes.draw do

  devise_for :users
  
  # get '/import/new' => 'imports#new', as: :new_import
  # put '/import' => 'import'

  resource :import, only: [:new, :create]

  root 'employees#index'
  
end
