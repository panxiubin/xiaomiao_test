Rails.application.routes.draw do
  namespace :api, path: '/' do
      resources :students, only: :show
      resources :teachers
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
