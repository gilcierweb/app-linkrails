devise_for :users
resources :home, only: [:index, :show] 
get '/:username', to: 'home#show'

get "up" => "rails/health#show", as: :rails_health_check

root to: "home#index"