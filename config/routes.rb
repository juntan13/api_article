Rails.application.routes.draw do
  namespace :api do
    namespace :vi do
      resources :articles, only: [:index, :show, :create, :update, :destroy]
    end
  end
end
