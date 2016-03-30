Rails.application.routes.draw do

  get 'users/new'

  resources :users
  get 'staticpages/home'

  get 'staticpages/profiles'
  
  get 'staticpages/about'

  get 'staticpages/calendar'
  

  get 'calendar/show'
  
  resource :calendar, only: [:show], controller: :calendar
  
  resources :events

  resources :profiles
  root :to => redirect('/staticpages/home')
  
end
