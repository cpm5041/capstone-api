# frozen_string_literal: true
Rails.application.routes.draw do
  resources :pets
  resources :examples, except: [:new, :edit]
  get 'my-pets' => 'pets#my_pets'
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
end
