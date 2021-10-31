Rails.application.routes.draw do
  resources :work_items
  resources :labels
  resources :reports
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
