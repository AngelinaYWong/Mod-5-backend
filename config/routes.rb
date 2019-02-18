Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :images, only: [:create, :show, :index]
      delete 'images/:id', to: 'images#destroy', as: 'destroy_image'
      resources :users, only: [:create]
      resources :posts, only: [:create, :delete, :index]
      resources :boards, only: [:create, :delete, :show, :index]
    end
  end

end
