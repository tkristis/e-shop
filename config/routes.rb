Rails.application.routes.draw do

  get 'static_pages/about'

  get 'static_pages/faq'

  get 'static_pages/contact'

  get 'static_pages/landing_page'

  get 'static_pages/product_list'

  post 'static_pages/thank_you'

  post 'payments/create'

  root 'static_pages#landing_page'

  devise_for :users
  
  resources :products do
    resources :comments
  end

  resources :categories do
    resources :products
  end
  
  resources :users
  
  resources :orders, only: [:index, :show, :create, :destroy]

  mount ActionCable.server => '/cable'
end
