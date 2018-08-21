Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :images, only: [:create, :delete, :show, :index]
      resources :users, only: [:create]
      resources :board_images, only: [:create, :delete, :index]
    end
  end

end
