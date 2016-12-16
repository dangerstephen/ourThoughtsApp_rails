Rails.application.routes.draw do
root to: 'profile#index'
get 'index' => 'profile#index'

get '/login' => 'sessions#login'
post '/login' => 'sessions#create'
get 'logout' => 'sessions#destroy'

get 'signup' => 'users#signup'
post 'users'=> 'users#create'

end
