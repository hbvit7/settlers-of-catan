Rails.application.routes.draw do
  resources :countries

  resources :players

  post "/login" => "players#login"
end
