Rails.application.routes.draw do
  resources :assessment_questions
  resources :student_answers
  resources :answers
  resources :questions
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :users

  post '/login', to: 'authentication#login'
end
