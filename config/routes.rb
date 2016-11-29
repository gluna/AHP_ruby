Rails.application.routes.draw do
  resources :julgamento_criterios
  resources :julgamentos
  resources :grupo_usuarios
  resources :grupo_avaliacaos
  devise_for :usuarios
  resources :projetos
  resources :criterios
  resources :alternativas

  match 'julgamento_criterios/all' => 'julgamentocriterios#update_all', :as => :julgamento_criterios_update_all, :via => :put
  match 'julgamento/all' => 'julgamentos#update_all', :as => :julgamento_update_all, :via => :put

  root 'projetos#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
