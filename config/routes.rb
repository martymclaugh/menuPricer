Rails.application.routes.draw do
  root 'home#index'
  devise_for :user
  resources :users do
    resources :menus do
      resources :recipes do
        resources :ingredients
      end
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
