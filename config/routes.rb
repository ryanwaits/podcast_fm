Rails.application.routes.draw do
  get 'signup' => 'registrations#new', as: 'signup'
  resource :registration, only: [:create]

  root 'welcome#index'
  resources :podcasts

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
