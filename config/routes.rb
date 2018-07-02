Rails.application.routes.draw do
  devise_for :users, controller: { registrations: 'registrations' } do
    get 'login', to: 'devise/session#new'
  end
  devise_scope :user do
    get 'signup', to: 'devise/registrations#new'
  end
  root to: 'pages#index'
end
