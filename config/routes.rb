Podcastdiscovery::Application.routes.draw do
  resources :users do
    resources :lists do
      resources :list_items, only: [:new, :create, :destroy, :index]
    end  
  end


  resources :podcasts, only: [:new, :create, :destroy, :index]
  resources :reviews, only: [:new, :create, :destroy, :index, :show]

  get "/confirm", to: "list_items#confirm"
  get "/info", to: "podcasts#info"
  get "/search", to: "podcasts#search"
  get "/login", to: "session#new"
  post "/session", to: "session#create"
  delete "/session", to: "session#destroy"


  root "welcome#index"
  get '/about', to: 'pages#about'
  get '/contact', to: 'pages#contact'
end
