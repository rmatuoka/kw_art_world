KwSimpleEcomerce::Application.routes.draw do    

  post '/tinymce_assets' => 'tinymce_assets#create'                              
  resources :services, :only => [:index, :show]
  resources :customers, :only => [:index]
  resources :about_us, :only => [:index]
  resources :articles, :only => [:show]
  resources :contacts, :only => [:new, :show, :create]
  resources :homes, :only => [:index]
  resources :user_sessions
  resources :users
  
  
  namespace(:admin){
    resources(:products){
      resources :product_images
      resources :product_informations
    }
    resources :services
    resources :customers
    get 'articles/tags/:tag', :to => 'articles#index', :as => :tag
    resources :articles 
    resources :businesses
    resources :contacts, :only => [:index, :show, :destroy]
    resources :highlights
    resources :statics, :only => [:index]
    resources(:categories){
      resources :items
      resources :subcategories
    }        
    root :to => 'statics#index'
  }
  
  
  root :to => 'homes#index'  
  match 'register' => "users#new"
  match 'login' => 'user_sessions#new'  
  match 'logout' => 'user_sessions#destroy'
end
