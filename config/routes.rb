Rails.application.routes.draw do
  resources :authors do
    resources :books, only: [ :index, :new ]
  end

  resources :books

  root "authors#index"
end
