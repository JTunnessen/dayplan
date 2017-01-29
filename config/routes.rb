Rails.application.routes.draw do
  get 'editors/index'

  get 'archive/index'
  get 'archive/future'
  get 'archive/list'

  devise_for :users
  resources :stories
  root 'stories#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
