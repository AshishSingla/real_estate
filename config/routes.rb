Rails.application.routes.draw do
  devise_for :users
  root to: 'properties#index'
  
  resources :property_attachments
  
  resources :houses, :commercial_units, :complex_buildings
  resources :properties do
    member do
      put :buy_property
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # root to: "home#index"
end
