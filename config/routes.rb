Rails.application.routes.draw do
  get 'users/new'
  get 'users/create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

RegistrationSystem::Application.routes.draw do
  get 'signup', to: 'users#new', as: 'signup'
  post 'users', to: 'users#create'
end
