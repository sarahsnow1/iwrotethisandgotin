Iwrotethisandgotin::Application.routes.draw do
  resources :sessions, only: [:new, :create, :destroy]
  resources :users

  match '/signup',   to: 'users#new'

  match '/signin',    to: 'sessions#new'
  match '/signout',   to: 'sessions#destroy'

  root to: 'sessions#login'

end
