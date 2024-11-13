Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create, :update, :destroy]
      get 'users/by_year/:year', to: 'users#by_year'
      get 'users/by_company/:company', to: 'users#by_company'
    end
  end
end
