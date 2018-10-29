Rails.application.routes.draw do
  get 'message/index'
  get 'guests', to: 'guests#index'
  resources :guests do
    collection do
      delete 'destroy_multiple'
    end
  end

  resources :messages
  get 'messages', to: 'message#index'
  get 'home', to: 'home#index'
  get 'welcome/index'
  root 'welcome#index'
  # devise_for :users
  devise_for :users, controllers: {registrations: "registrations"}

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
