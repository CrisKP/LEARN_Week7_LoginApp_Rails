Rails.application.routes.draw do
  root 'users#welcome'

  post 'register' => 'users#register'

  get '/confirmation' => 'users#confirmation'
  post '/confirmation' => 'users#confirmation'

  get 'users/login'

  post '/users/loggedin' => 'users#loggedin'
  get '/users/loggedin' => 'users#loggedin'
end
