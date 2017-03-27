Rails.application.routes.draw do
  root 'welcome#index'

  get 'users/index' => 'users#index', as: 'users_index'

  get 'users/show'

  get 'users/new'

  get 'users/create'

  get 'users/:id/edit' => 'users#edit', as: 'users_edit'

  patch 'users/:id/update' => 'users#update', as: 'users_update'

  get 'users/destroy'

  get 'sessions/create'

  delete 'sessions/:id/destroy' => 'sessions#destroy', as: 'session_delete'

  get 'welcome/index'=> 'welcome#index'

  get 'vitamins/index' => 'vitamins#index', as: 'vitamins_index'

  post 'vitamins/create' => 'vitamins#create', as: 'vitamins_create'

  get 'vitamins/show/:id' => 'vitamins#show', as: 'vitamins_show'

  get 'vitamins/new' => 'vitamins#new', as: 'vitamins_new'

  get 'vitamins/:id/edit' => 'vitamins#edit', as: 'vitamins_edit'

  put 'vitamins/:id/update' => 'vitamins#update', as: 'vitamins_update'

  put 'vitamins/:id/complete' => 'vitamins#complete', as: 'vitamins_complete'

  delete 'vitamins/:id/destroy' => 'vitamins#destroy', as: 'vitamins_delete'

  # Tells oAuth where to send user after login
  get "/auth/:provider/callback", to: "sessions#create"

end
