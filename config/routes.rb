Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :songs
  # get '/songs', to: 'songs#index'
                    #controller#method
end
