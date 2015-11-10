Rails.application.routes.draw do
  root to: 'home#show'
  resource :inquiry, only: :create
end
