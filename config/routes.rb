Rails.application.routes.draw do

  root 'homes#top'
  

  resources :books
  get 'books' => 'homes#top'
  resources :lists

end

