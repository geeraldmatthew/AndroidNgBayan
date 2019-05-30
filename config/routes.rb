Rails.application.routes.draw do
  resources :phones
  get "phones/decrement/:id", to: "phones#decrement"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
