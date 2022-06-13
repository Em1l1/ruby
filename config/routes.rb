Rails.application.routes.draw do
  resources :categories, execpt: :show
  resources :products, path: '/'
end
