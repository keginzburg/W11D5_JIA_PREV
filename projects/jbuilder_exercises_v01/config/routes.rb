Rails.application.routes.draw do
  # Your routes here!
  namespace :api, defaults: { format: :json } do
    resources :guests, only: [:index, :show] do
      resources :gifts, only: [:index]
    end
    resources :gifts, only: [:show]
    resources :parties, only: [:index, :show]
  end

  # Note use of namespace for api namespacing of routes and use of defaults for the expected data format of request and responses
  # Note use of nesting for gifts under guests: "api/guests/1/gifts" vs "api/gifts"
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
