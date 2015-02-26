Rails.application.routes.draw do

  resources :players do
    resources :countries
  end
  
  post "/login" => "players#login"

  post "/logout" => "players#logout"

end
