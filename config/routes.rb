Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'tracks#index'
  get 'tracks', to: 'tracks#index'
  get 'tracks/new', to: 'tracks#new', as: :new_track
  post 'tracks', to: 'tracks#create'
  get 'tracks/:id', to: 'tracks#show', as: :track
  get 'tracks/:id/edit', to: 'tracks#edit', as: :edit_track
  patch 'tracks/:id', to: 'tracks#update'
  delete 'tracks/:id', to: 'tracks#destroy', as: :destroy_track
end
