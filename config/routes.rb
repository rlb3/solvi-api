Rails.application.routes.draw do
  use_doorkeeper
  jsonapi_resources :users
  jsonapi_resources :polls
  jsonapi_resources :choices
end
