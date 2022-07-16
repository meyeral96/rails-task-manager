Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "tasks", to: "tasks#index", as: :all_tasks

  # Create task
  get "tasks/new", to: "tasks#new", as: :new_task
  post "tasks", to: "tasks#create"

  # Read one task
  get "tasks/:id", to: "tasks#show", as: :task

  # update task
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  patch "tasks/:id", to: "tasks#update"

  # delete task
  delete "tasks/:id", to: "tasks#destroy", as: :delete_task
end
