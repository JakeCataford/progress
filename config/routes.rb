Progress::Application.routes.draw do
  get "dashboard", to: "dashboard#index"
  resources :task, :user, :project, format: 'json'
end
