Rails.application.routes.draw do
root 'welcome#index'
resources :providers
# root '#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end