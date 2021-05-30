Rails.application.routes.draw do
  root to: "memos#index"
  resources :memos
  get "/categories/:id", to: "categories#show"
end
