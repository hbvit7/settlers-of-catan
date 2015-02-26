Rails.application.routes.draw do

	root to: 'static#homepage'

  resources :players do
    resources :countries
  end
  
  post "/login" => "players#login"

  post "/logout" => "players#logout"

end
