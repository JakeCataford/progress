Progress::Application.routes.draw do
  resources :tasks, :user, :project, format: 'json'
end
