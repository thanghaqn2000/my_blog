Rails.application.routes.draw do
  devise_for :admins, path: "admin", path_names: { sign_in: "login", sign_out: "logout", sign_up: "register" }, controllers: {
    sessions: "admin/sessions"
  }
  resources :admins, only: %i(index)
  namespace :admin do
    resources :posts, only: %i(index)
  end
  resources :users, only: %i(index)
  root to: "home#index"
end
