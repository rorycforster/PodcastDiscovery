Podcastdiscovery::Application.routes.draw do
  resources :users do
    resources :reviews
  end

  resources :lists do
    resources :list_items
  end

  resources :podcasts


  get "/login", to: "session#new"
  post "/session", to: "session#create"
  delete "/session", to: "session#destroy"


  root "welcome#index"
  match '/about' => 'pages#about'
  match '/contact' => 'pages#contact'
end
