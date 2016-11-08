Rails.application.routes.draw do
  resources :projetos
  resources :grupo_criterios
  resources :criterios
  resources :alternativas

  root 'projetos#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
