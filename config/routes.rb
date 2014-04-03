Podcastdiscovery::Application.routes.draw do
  resources :users do
    resources :lists do
      resources :list_items, only: [:new, :create, :destroy, :index, :show]
    end  
  end


  resources :podcasts, only: [:new, :create, :destroy, :index, :show]
  resources :reviews, only: [:new, :create, :destroy, :index, :show]

  get "/search", to: "podcasts#search"
  get "/login", to: "session#new"
  post "/session", to: "session#create"
  delete "/session", to: "session#destroy"


  root "welcome#index"
  get '/about' => 'pages#about'
  get '/contact' => 'pages#contact'
end
