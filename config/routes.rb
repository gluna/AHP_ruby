Rails.application.routes.draw do
  resources :julgamento_criterios
  resources :julgamentos
  resources :grupo_usuarios
  resources :grupo_avaliacaos
  resources :projetos
  resources :criterios
  resources :alternativas

  match 'julgamento_criterio/all' => 'julgamento_criterios#update_all', :as => :julgamento_criterio_update_all, :via => :put
  match 'julgamento/all' => 'julgamentos#update_all', :as => :julgamento_update_all, :via => :put
  match 'projeto/resultado' => 'projetos#resultado', :as => :resultado_projeto, :via => :get

  root 'projetos#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_for :users, controllers: {
      sessions: 'users/sessions',
      passwords: 'users/passwords',
      registrations: 'users/registrations'
  }
end
