Rails.application.routes.draw do
  get 'feedbacks/test'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'


  get 'signup', to: 'users#new'
  post "create" => "users#create"
  get "login" => "users#login_form"
  post "login" => "users#login"
  post "logout" => "users#logout"
  get "users/:id/edit" => "users#edit"
  resources :users, only: [:login, :update]

  get "lessons/about" => "lessons#about"
  get "lessons/trial" => "lessons#show_trial"
  get "lessons/:id/trial_booking" => "lessons#trial_booking"
  post "lessons/:id/trial_booked" => "lessons#trial_booked" 
  get "lessons/regular" => "lessons#show_regular"
  get "lessons/:id/regular_booking" => "lessons#regular_booking"
  post "lessons/:id/regular_booked" => "lessons#regular_booked"

  get "feedbacks/:id/:id" => "feedbacks#test"
  post "feedbacks/:id/:id/answer" => "feedbacks#answer"""
  get "feedbacks/:id/:id/result" => "feedbacks#result"

  get '/' => "home#top"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
