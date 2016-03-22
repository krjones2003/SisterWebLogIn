Rails.application.routes.draw do

  get 'staticpages/home'

  get 'staticpages/profiles'
  
  get 'staticpages/about'

  get 'staticpages/calendar'
  

  resources :profiles
  root :to => redirect('/staticpages/home')
  
end
