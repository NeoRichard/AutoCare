Rails3BootstrapDeviseCancan::Application.routes.draw do


  authenticated :user do
    root :to => 'home#index'
  end
  
  root :to => "home#index"
  devise_for :users

  resources :users do
  	resources :vehicles
  	match 'users/:id/vehicles/:vehicles' => 'user_vehicle#show'
    match 'users/:id/vehicles/:vehicles/edit' => 'edit_user_vehicle#edit'
    match 'users/:id/vehicles/:vehicles/destroy' => 'user_vehicle#delete'

  	match 'users/:id/vehicles/new' => 'new_user_vehicle#new'
  end

end