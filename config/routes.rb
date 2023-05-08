Rails.application.routes.draw do
  get 'users/new'
  get 'users/create'

end

Veterinaria::Application.routes.draw do
  get 'signup', to: 'users#new', as: 'signup'
  post 'users', to: 'users#create'
end
