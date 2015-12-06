# get '/api', to: "books#api",  as: :api
resources :books

get '/',    to: "home#index", as: :home
