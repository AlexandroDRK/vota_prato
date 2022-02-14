Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")  # root "articles#index"

end

VotaPrato::Application.routes.draw do
  resources :restaurantes
#match 'restaurantes', controller: 'restaurantes', action: 'index', via: 'get'
end

VotaPrato::Application.routes.draw do
match 'ola' => 'ola_mundo#index', via: 'get'
end
