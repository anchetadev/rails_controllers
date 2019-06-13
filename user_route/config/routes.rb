Rails.application.routes.draw do
  get 'users/index'
  get 'users/new'
  get 'users/one'
  get 'users/gedit'
  get 'users/pedit'
  get 'users/total'


  get "users" => "users#index"
  get "users/new" => "users#new"
  get "users/:id" => "users#one"
  get "users/:id/edit" => 'users#gedit'
  post "users/:id/edit" => 'users#pedit'
  get "users/total" => 'users#total'

end
