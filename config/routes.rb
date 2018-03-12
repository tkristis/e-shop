Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'about', to: 'static_pages#about'

  get 'faq', to: 'static_pages#faq'

  get 'contact', to: 'static_pages#contact'

  get 'landing_page', to: 'static_pages#landing_page'

  get 'product_list', to: 'static_pages#product_list'

  post 'static_pages/thank_you'

  post 'payments/create'

  root 'static_pages#landing_page'

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

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
