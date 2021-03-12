Rails.application.routes.draw do
  root to: 'talks#index'
  resources :talks, only: [:index,:show] do
    resources :hotsprings,only: :index
  end
end
