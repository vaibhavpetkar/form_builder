Rails.application.routes.draw do
  namespace :form_builder do
    resources :forms
  end
end
