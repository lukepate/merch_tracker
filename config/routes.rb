Rails.application.routes.draw do
  devise_for :users
  resources  :shirts, :events, :tours
  root to: 'tours#index'
end
