Rails.application.routes.draw do
  devise_for :users
  resources :proposals do
  resources :claims, only: [:new, :create]
end  
  root "pages#home"
  get "dashboard" => "pages#dashboard"
  get 'creator_history' => "claims#creator_history"
  get 'claimer_history' => "claims#claimer_history"

end
