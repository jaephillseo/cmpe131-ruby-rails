Rails.application.routes.draw do
  #get 'welcome/home' #it can be deleted, but have to use root_path
  resources :users

  
  get '/help', to: 'welcome#help'
  
  get '/books', to:'welcome#books'
  

  get '/contact', to:'welcome#contact'
  
  get '/signup', to: 'users#new'
  
  post '/signup', to: 'users#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#home'
  
  
end
