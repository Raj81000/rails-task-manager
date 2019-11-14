Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Create - get the form and submit the form
  get "tasks/new", to: "tasks#new", as: :new_task
  post "tasks", to: "tasks#create"
  # read all the restaurants, read one of the restaurants
  get "tasks", to: "tasks#index"
  get "tasks/:id", to: "tasks#show", as: :task
  # get the form, submit the formtas
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  patch "tasks/:id", to: "tasks#update"
  # delete
  delete "tasks/:id", to: "tasks#destroy"
end

# get/post/patch "urlpath", to: controller#method, as: prefix

# First, add a new route to list the tasks, following the convention from the lecture. Then, add a controller action and its view. This action should fetch all tasks, and a view should loop over these to display them, like in the screenshot below.

# To test your view, you need some tasks in the database! To create some, run a rails console in another terminal tab and then run
