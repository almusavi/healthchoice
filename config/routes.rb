Rails.application.routes.draw do
root 'welcome#index'
# match '/contacts', to: 'contacts#new'
get '/welcome/index', to: 'welcome#index'
get '/providers/search', to: 'providers#search'
get '/providers/contact', to: 'providers#contact'
get '/providers/phonenumber', to: 'providers#phonenumber'
resources :providers
resources "contacts", only: [:new, :create]
# root '#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
