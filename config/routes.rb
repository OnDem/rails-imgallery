Rails.application.routes.draw do
  resources :pictures
  resources :galleries do
    collection do
      get :mygalleries
    end  
  end  
  devise_for :users
  root 'galleries#index'

end
