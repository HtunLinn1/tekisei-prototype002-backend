Rails.application.routes.draw do
  namespace :v1 do
    resources :users
    mount_devise_token_auth_for 'User', at: 'auth'
  end
end
