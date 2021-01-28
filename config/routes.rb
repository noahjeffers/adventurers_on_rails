Rails.application.routes.draw do
  resources :items
  resources :adventurers, only: %i[index show]

  root to: "adventurers#index"
  # Domain Specific Language
  # all the routing syntax
  # get "/adventurers", to: "adventurers#index", as: "adventurers"
  # get "/adventurers/:id", to: "adventurers#show", as: "adventurer", constraints: { id: /\d+/ }
end
