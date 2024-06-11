Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # Define the root route
  root 'homepage#index'

  # Add routes for tasks below this line
  resources :tasks, only: [:index, :create, :destroy] do
    member do
      put 'mark_complete'
      put 'mark_active'
    end
  end

  # Add delete route for tasks
  delete 'tasks/:id' => 'tasks#destroy'

  # Add put route for marking a task as complete
  put '/tasks/:id/mark_complete' => 'tasks#mark_complete'

  # Add put route for marking a task as active
  put '/tasks/:id/mark_active'   => 'tasks#mark_active'

  # Redirect all other paths to the index page, which will be taken over by Ang$
  get '*path' => 'homepage#index'
end

