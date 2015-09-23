KwArtWorld::Application.routes.draw do    
  post '/tinymce_assets' => 'tinymce_assets#create'                              
  resources :services, :only => [:index, :show]
  resources :customers, :only => [:index]
  resources :about_us, :only => [:index]
  resources :articles, :only => [:show]
  resources :contacts, :only => [:new, :show, :create]
  resources (:homes) {
    collection do
      get "search"
    end
  }
  resources :user_sessions
  resources :users
  resources :materials
  resources :cases
  resources :categories, :only => [:index, :show]
  
  namespace(:admin){
    resources :abouts
    resources :customers
    resources :materials
    resources (:services){
      resources :service_images
    }
    resources :customers
    get 'articles/tags/:tag', :to => 'articles#index', :as => :tag
    resources :contacts, :only => [:index, :show, :destroy]
    resources :highlights
    resources :statics, :only => [:index]
    resources (:categories){
      resources :subcategories
    }
    root :to => 'statics#index'
    
    resources (:cases){
      resources :case_images 
    }
  }
  
  
  root :to => 'homes#index'  
  match 'register' => "users#new"
  match 'login' => 'user_sessions#new'  
  match 'logout' => 'user_sessions#destroy'
end
