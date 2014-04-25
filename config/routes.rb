Rails.application.routes.draw do
  root 'dashboard#index'
  get '/playlist' => 'playlist#index'
  get '/new' => 'playlist#new'
  post 'playlist' => 'playlist#create'
  get '/playlist/:id' => 'playlist#show'
  get '/playlist/:id/edit' => 'playlist#edit'
  put '/playlist/:id' => 'playlist#update'
  delete 'playlist/:id' => 'playlist#destroy'
end
