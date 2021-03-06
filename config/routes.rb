Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :questions do
    resources :answers
  end

  resources :answers do
    resources :favorites, only: [:create]
  end

  root 'questions#index'
end
