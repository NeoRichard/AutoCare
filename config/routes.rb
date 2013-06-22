Rails3BootstrapDeviseCancan::Application.routes.draw do


  resources :alerts

#  resources :messages



  authenticated :user do
    root :to => 'home#index'
  end
  
  root :to => "home#index"
  devise_for :users

  # resources :users do
  #   resources :messages
  # end
    resources :vehicles do
      match '/vehicles/:vehicles' => 'vehicle#show'
    end
  
  resources :users do
    resources :vehicles
  	match 'users/:id/vehicles/:vehicles' => 'user_vehicle#show'
    match 'users/:id/vehicles/:vehicles/edit' => 'edit_user_vehicle#edit'
    match 'users/:id/vehicles/:vehicles/destroy' => 'user_vehicle#delete'

  	match 'users/:id/vehicles/new' => 'new_user_vehicle#new'
  end
  
  resources :users do
    resources :messages
    match 'users/:id/messages/:messages' => 'user_message#show'
    match 'users/:id/messages/:messages/edit' => 'edit_user_message#edit'
    match 'users/:id/messages/:messages/destroy' => 'user_message#delete'

    match 'users/:id/messages/new' => 'new_user_message#new'
  end

end


# http://archives.ryandaigle.com/articles/2008/9/7/what-s-new-in-edge-rails-shallow-routes