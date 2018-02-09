Rails.application.routes.draw do

  namespace :api do
    resources :artists do
      resources :song
    end
  end
  
end
