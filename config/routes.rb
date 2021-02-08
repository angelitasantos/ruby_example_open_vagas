Rails.application.routes.draw do
  resources :companies, only: [:new, :edit, :create, :update]
  resources :positions
  resources :applicants, only: [:index, :new, :create]
  devise_for :users
  root to: 'home#index'
  get 'simulador', to: 'home#simulador'
  get 'financeiro', to: 'home#financeiro'
  get 'vendas', to: 'home#vendas'
  get 'cadastros', to: 'home#cadastros'
  get 'operacional', to: 'home#operacional'
  get 'relatorios', to: 'home#relatorios'
  get 'painel', to: 'home#painel'
  get 'site', to: 'home#site'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
