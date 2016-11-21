Rails.application.routes.draw do
  resources :julgamentos
  resources :grupo_usuarios
  resources :grupo_avaliacaos
  devise_for :usuarios
  resources :projetos
  resources :criterios
  resources :alternativas

  root 'projetos#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
