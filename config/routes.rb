Rails.application.routes.draw do
  root "application#homepage"
  resources :colaboradores

  get "/homepage", to: "application#homepage", as: :homepage 

end
