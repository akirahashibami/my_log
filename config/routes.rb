Rails.application.routes.draw do

  root to: 'home#top'

  devise_for :users

  get "users/:id/vlogs" => "users#vlogs", as: "vlog"
  resources :users, only: [:index, :show, :edit, :update]
  resources :vlogs, :except => [:new]

end
