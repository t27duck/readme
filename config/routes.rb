# frozen_string_literal: true

Rails.application.routes.draw do
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", :as => :rails_health_check

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
