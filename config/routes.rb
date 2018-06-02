Rails.application.routes.draw do
  root 'home#home'
  
  resources :playlists do 
    resources :songs 
  end 

  resources :artists do 
    resources :songs 
  end 

  resources :albums do
    resources :songs 
  end 

  resources :songs 


end
