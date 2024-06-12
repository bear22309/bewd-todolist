Rails.application.routes.draw do
  root 'tasks#index'
  
  # Explicit route definitions
  get 'tasks' => 'tasks#index'
  post 'tasks' => 'tasks#create'
  delete 'tasks/:id' => 'tasks#destroy'
  put '/tasks/:id/mark_complete' => 'tasks#mark_complete'
  put '/tasks/:id/mark_active'   => 'tasks#mark_active'

  # Resourceful route definition
  resources :tasks, only: [:index, :create, :destroy] do
    member do
      put 'mark_complete'
      put 'mark_active'
    end
  end
end

