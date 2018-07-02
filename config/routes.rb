Rails.application.routes.draw do
  devise_for :users, controller: { registrations: 'registrations' } do
    get 'login', to: 'devise/session#new'
  end
  root to: 'pages#index'
end
