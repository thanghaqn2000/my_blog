Rails.application.routes.draw do
  devise_for :admins, path: "admin", path_names: { sign_in: "login", sign_out: "logout", sign_up: "register" }, controllers: {
    sessions: 'admins/sessions'
  }

  resources :admins, only: %i(index)
  resources :users, only: %i(index)
  root to: "home#index"
end
