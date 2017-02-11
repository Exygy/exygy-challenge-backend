# == Route Map
#
#      Prefix Verb URI Pattern              Controller#Action
# login_users POST /users/login(.:format)   users#login
#  edit_users POST /users/edit(.:format)    users#edit
#   documents GET  /documents(.:format)     documents#index
#    document GET  /documents/:id(.:format) documents#show
#

Rails.application.routes.draw do
  resources :users, only: [] do
    collection do
      post 'login', via: [:post, :options]
      post 'edit'
      match 'login', to: 'users#options', via: [:options]
      # get 'login', constraints: { method: 'OPTIONS' }
    end
  end
  resources :documents, only: [:index, :show]
  root 'documents#index'
end
