Rails.application.routes.draw do
  get 'static_pages/about'

  get 'static_pages/contact'

  get 'static_pages/index'

  get 'static_pages/landing_page'

  post 'static_pages/thank_you'


  root 'static_pages#landing_page'


  devise_for :users
  
  resources :products do
    resources :comments
  end
  
  resources :users
  
  resources :orders, only: [:index, :show, :create, :destroy]

end
