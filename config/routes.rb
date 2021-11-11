Rails.application.routes.draw do
  resources :work_items
  resources :labels
  resources :reports
  root 'reports#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
