Rails.application.routes.draw do
  resources :topics
  resources :courses do
    member do
      get "assign_topic" => "courses#assign_topic"
    end
  end
  resources :students

  root "students#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
