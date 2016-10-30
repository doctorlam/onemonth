Rails.application.routes.draw do
  devise_for :users
  resources :proposals do
  resources :claims, only: [:new, :create]
end  
  root "pages#home"
  get "dashboard" => "pages#dashboard"
  get 'client' => "journeys#client"
  get 'history' => "claims#history"

end
