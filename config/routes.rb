
Rails.application.routes.draw do
  devise_for :users, controllers: {
  session: 'users/session',
  registrations: 'users/registrations'
  }
  resources :features
  resources :images

  #/posts/1/comments/4
  resources :posts do
    resources :comments
  end

  
  get 'about', to: 'pages#about'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "pages#home"
   
end
