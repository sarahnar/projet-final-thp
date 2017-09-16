Rails.application.routes.draw do
  

  devise_scope :user do
    get "/signin" => "devise/sessions#new" # custom path to login/sign_in
    get "/signup" => "devise/registrations#new", as: "new_user_registration" # custom path to sign_up/registration
  end

  devise_for :users
  get '/home',   to: 'restaurant#home'
  get '/restaurant/new', to: 'restaurant#form' #admin
  get '/restaurant/:id_restaurant',  to: 'restaurant#show' 
  get '/restaurant/:id_restaurant/edit', to: 'restaurant#form' #admin
  post '/restaurant/:id_restaurant/reservation', to: 'restaurant#reservation'
  get '/restaurants', to: 'restaurant#list' #admin
  post '/restaurant', to: 'restaurant#create'
  put '/restaurant/:id_restaurant', to: 'restaurant#edit'
  get '/restaurant/:id_restaurant/destroy', to: 'restaurant#destroy'

  post '/opening/:id_restaurant/add', to: 'opening#add'
  get '/opening/:id_opening/destroy', to: 'opening#destroy'

  root 'restaurant#home'
end
