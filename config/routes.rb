Iwrotethisandgotin::Application.routes.draw do
  match '/home', to: 'static_pages#home'
  match '/help', to: 'static_pages#help'
  match '/about', to: 'static_pages#about'

  resources :sessions, only: [:new, :create, :destroy]
  resources :users

  match '/signup',   to: 'users#new'

  match '/signin',    to: 'sessions#new'
  match '/signout',   to: 'sessions#destroy'

  root to: 'static_pages#home'

end
