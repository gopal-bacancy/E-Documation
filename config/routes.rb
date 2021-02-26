Rails.application.routes.draw do
  get 'home/Profile'
  get 'home/SignUp'
  post 'home/check_auth'
  get 'home/Home'
  resources :home
  resources :docs
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
