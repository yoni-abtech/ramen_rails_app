# typed: strict
Rails.application.routes.draw do
  get 'welcome/index'

  resources :ramens

  root 'welcome#index'
end
