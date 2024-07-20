Rails.application.routes.draw do
  devise_for :users
  as :user do
    get "signin" => "devise/sessions#new"
    post "signin" => "devise/sessions#create"
    get "sign_up" => "devise/registrations#new"
    delete "signout" => "devise/sessions#destroy"
  end

  resources :users, only: %i(index)
  root to: "home#index" 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
