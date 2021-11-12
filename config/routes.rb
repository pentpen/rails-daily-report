Rails.application.routes.draw do
  resources :work_items
  resources :labels
  resources :reports
  root 'reports#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  scope '/api' do
    get '/work_items', to: 'work_items#index', defaults: { format: :json }
    get '/work_items/:id', to: 'work_items#show', defaults: { format: :json }
  end
end
