Rails.application.routes.draw do
  root "colaboradores#homepage"
  resources :colaboradores

  get "/homepage", to: "colaboradores#homepage", as: :homepage 

end
