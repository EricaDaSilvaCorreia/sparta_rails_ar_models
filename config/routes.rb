Rails.application.routes.draw do
  get 'static/landing'
  resources :sketchbooks
  resources :artists
  resources :paints
end
