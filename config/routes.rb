Progress::Application.routes.draw do
  get "dashboard/index"
  resources :task, :user, :project, format: 'json'
end
