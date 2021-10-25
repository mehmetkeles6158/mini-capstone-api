Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/products" => "products#index"

  get "/products/:id" => "products#show"

  post "/products" => "products#create"

  patch "/products/:id" => "products#update"

  delete "/products/:id" => "products#destroy"



  get "/suppliers" => "suppliers#index"

  get "/suppliers/:id" => "suppliers#show"

  post "/suppliers" => "suppliers#create"

  

  post "/users" => "users#create"


end
