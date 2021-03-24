Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  
  get '/:category/scores' => 'scores#index'


  post '/scores' => 'scores#create'
end
