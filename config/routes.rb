Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  namespace :api do
    get 'all_breeds', to: 'client#all_breeds'
    get 'random_image', to: 'client#random_image'
    get 'all_master_breeds', to: 'client#all_master_breeds'
    get 'sub_breeds/:breed', to: 'client#sub_breeds', as: 'sub_breeds'
    get 'breed_info/:breed', to: 'client#breed_info', as: 'breed_info'
  end
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
