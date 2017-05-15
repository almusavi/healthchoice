Rails.application.routes.draw do
root 'welcome#index'
get '/welcome/index', to: 'welcome#index'
get '/providers/search', to: 'providers#search'
get '/providers/phonenumber', to: 'providers#phonenumber'
resources :providers
# root '#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
