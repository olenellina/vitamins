Rails.application.routes.draw do
  root 'welcome#index'

  get 'user/create'

  get 'sessions/create'

  delete 'sessions/:id/destroy' => 'sessions#destroy', as: 'session_delete'

  get 'welcome/index'=> 'welcome#index'

  get 'vitamins/new'

  get 'vitamins/create'

  get 'vitamins/update'

  get 'vitamins/edit'

  get 'vitamins/destroy'

  get 'vitamins/index'

  get 'vitamins/show'

  # Tells oAuth where to send user after login
  get "/auth/:provider/callback", to: "sessions#create"

end
