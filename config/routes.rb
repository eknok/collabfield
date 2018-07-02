Rails.application.routes.draw do
  devise_for :users do
    get 'login', to: 'devise/session#new'
  end
  root to: 'pages#index'
end
