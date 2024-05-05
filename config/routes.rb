# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    namespace :v2 do
      get "readme", to: "readme#index"
    end
  end
  root "site#index"
end
