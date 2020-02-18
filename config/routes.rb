Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'tasks', to: 'tasks#index', as: :task_index

  get 'tasks/new', to: 'tasks#new', as: :task_new
  post 'tasks', to: 'tasks#create'

  get 'tasks/:id', to: 'tasks#show'

  get 'tasks/:id/edit', to: 'tasks#edit', as: :task_edit
  patch 'tasks/:id', to: 'tasks#update', as: :task

  delete 'tasks/:id', to: 'tasks#destroy', as: :task_destroy

  get 'tasks/:id/done', to: 'tasks#done', as: :task_done
end
