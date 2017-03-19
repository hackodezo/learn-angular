Rails.application.routes.draw do
  root 'visitors#index'
  get 'visitors/index'
  resources :visitors, only:[:create, :index, :update, :delete], defaults: {format: :json}
end
