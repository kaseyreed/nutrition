Rails.application.routes.draw do
  get 'trainings/index'
  post 'trainings/create'
  get 'nutrition/index'
  post 'nutrition/create'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "nutrition#index"
end
