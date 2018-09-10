Rails.application.routes.draw do
  root to: 'profile#test'
  get '/profile/:username', to: 'profile#index'

  resources :ads do
    delete :delete_image_attachment
  end
  devise_for :users, :controllers => { registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :conversations, only: [:index, :show, :destroy]
  resources :messages, only: [:new, :create]
end
