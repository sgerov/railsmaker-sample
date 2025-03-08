Rails.application.routes.draw do
  # Demo pages
  get "demo", to: "demo#index", as: :demo
  get "analytics", to: "demo#analytics", as: :analytics
  get "support", to: "demo#support", as: :support

  # Static pages
  get "privacy", to: "pages#privacy", as: :privacy
  get "terms", to: "pages#terms", as: :terms
  # OmniAuth callback routes
  get "auth/:provider/callback", to: "omniauth_callbacks#google_oauth2", constraints: { provider: "google_oauth2" }
  get 'auth/failure', to: 'omniauth_callbacks#failure'
  root 'main#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
end
