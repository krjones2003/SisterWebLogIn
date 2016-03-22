Rails.application.routes.draw do

  get 'staticpages/home'

  get 'staticpages/about'

  get 'staticpages/links'

  get 'calendar/show'
  
  resource :calendar, only: [:show], controller: :calendar
  
  resources :events

  resources :profiles
  root :to => redirect('/staticpages/home')
  
end
