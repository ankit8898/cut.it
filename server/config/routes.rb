Rails.application.routes.draw do
  namespace :api do
    resources :urls ,only: [:index,:create]
    resource :shorten,only: [:create]
    #post "/urls",to: "urls#create",as: "shorten"
  end
end
