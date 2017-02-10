Rails.application.routes.draw do

  devise_for :users
  constraints subdomain: 'api' do
    scope module: 'api' do
      namespace :v1 do
        resources :users
        resources :sessions, :only => [:create, :destroy]
      end
    end
  end

  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
