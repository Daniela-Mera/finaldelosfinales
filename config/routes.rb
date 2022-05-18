Rails.application.routes.draw do
  resources :asignaturas
  resources :fonos
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  get 'home/index'

  # root "articles#index"
  root to: "home#index"

  #rutas para trabajar con n-n matricula/asignatura
  get "/matriculas/form", to:"matriculas#index"   
  get "/matriculas/new", to:"matriculas#new" 
  get "/matriculas/eliminar", to:"matriculas#eliminar"
end
