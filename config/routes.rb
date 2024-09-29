# frozen_string_literal: true

Rails.application.routes.draw do
  resources :entries
  resources :user_manual_headings do
    resources :user_manual_entries, except: [:index]
  end
  resources :links
  resource :session, only: [:new, :create, :destroy]
  namespace :api do
    namespace :v2 do
      get "readme", to: "readme#index"
    end
  end
  root "site#index"
end
