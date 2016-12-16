Rails.application.routes.draw do
resources :thoughts


root to: 'profile#index'
get 'index' => 'profile#index'

get '/login' => 'sessions#login'
post '/login' => 'sessions#create'
get '/logout' => 'sessions#destroy'

get '/signup' => 'users#signup'
post '/users'=> 'users#create'
#
# get '/thoughts' => "thoughts#index", as: 'thoughts'
# get '/thoughts/new' => "thoughts#new", as: 'new_thought'
# post '/thoughts' =>'thoughts#create'
# delete "/thoughts/:id" => "thoughts#destroy", as: 'destroy_thought_path'
#
# get '/thoughts/:id/edit', 'thoughts#edit'
# patch '/thoughts/:id', 'thoughts#update'

end
