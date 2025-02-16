Rails.application.routes.draw do
  resources :usuarios
  resources :cursos
  resources :turmas
  resources :disciplinas
  resources :unidade_disciplinas
  resources :conteudos
  resources :leitura_conteudos
  
  root 'cursos#index'
  
  get '/entrar', to: 'sessions#login'
  post '/entrar', to: 'sessions#create'
  get '/sair', to: 'sessions#destroy'

  get '/comunicados', to: 'cursos#index'
  get '/curso', to: 'cursos#index'
  get '/ide', to: 'cursos#index'
  get '/tarefas', to: 'cursos#index'
  get '/mensagens', to: 'cursos#index'

  get '/conteudos/:id/salvar', to: 'conteudos#salvar'

  get '/sobre', to: 'sobre#index'
  get '/instalar', to: 'sobre#instalar'
  get '/aprender', to: 'sobre#aprender'
end
