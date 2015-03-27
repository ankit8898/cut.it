Rails.application.routes.draw do
  root "api/urls#show",:id => '1'

  namespace :api do
    post "/shorten" => "urls#create", as: :create_url
    get "/urls" => "urls#index", as:  :urls
    get "/url/:code" => "urls#show", as:  :url
  end


end
