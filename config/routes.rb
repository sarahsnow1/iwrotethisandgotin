Iwrotethisandgotin::Application.routes.draw do

  match '/signup',   to: 'users#new'

  match '/login',    to: 'sessions#login'
  match '/logout',   to: 'sessions#logout'

  root to: 'sessions#login'

end
