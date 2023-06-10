Rails.application.routes.draw do
  resources :contacts
  resources :pictures
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
  resources :favorites, only: [:create, :destroy]
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
