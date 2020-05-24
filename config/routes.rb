Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
resources :reviews
resources :clients, except: [:index]

resources :personal_trainers
resources :routines
resources :exercises
resources :workout_plans, except: [:edit, :update]
end
