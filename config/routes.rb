Rails.application.routes.draw do
  get 'welcome/index'

  get 'vitamins/new'

  get 'vitamins/create'

  get 'vitamins/update'

  get 'vitamins/edit'

  get 'vitamins/destroy'

  get 'vitamins/index'

  get 'vitamins/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
