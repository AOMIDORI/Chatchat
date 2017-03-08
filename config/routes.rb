Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  get 'sessions/new'

  get 'users/new'

  get '/static_pages/home'

  namespace :services do
    get '/checkout', to: 'services#cart', as: :cart
    post '/purchase', to: 'services#purchase', as: :purchase
    get '/:id', to: 'services#detail', as: :detail
    get '/:id/add', to: 'services#add_to_cart', as: :add_to_cart
    get '/:id/remove', to: 'services#remove_from_cart', as: :remove_from_cart
  end

  get '/help', to:'static_pages#help'

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'

  get '/logout', to: 'sessions#destroy'

  resources :users
  resources :posts,  only: [:create, :destroy]

  root 'static_pages#home'
end
