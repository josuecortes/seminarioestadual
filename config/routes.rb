Rails.application.routes.draw do
  resources :inscriptions
  get 'home/index'

  get 'home/nao_autorizado'

  get 'home/comprovante'

  post 'home/salvar_inscricao'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
