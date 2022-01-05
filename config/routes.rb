Rails.application.routes.draw do
  root 'static_pages#home'
  resources :sets, only: [:index, :show, :new, :create, :edit, :update]
end
