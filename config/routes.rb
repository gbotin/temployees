Temployees::Application.routes.draw do

  devise_for :users
  
  resource :import, only: [:new, :create]

  root 'employees#index'
  
end
