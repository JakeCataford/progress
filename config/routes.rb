Progress::Application.routes.draw do
  resources :task, :user, :project, format: 'json'
end
