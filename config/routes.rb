Rails.application.routes.draw do
  get 'tasks/index'
  get 'tasks/show'
  get 'tasks/new'
  get 'tasks/create'
  get 'tasks/edit'
  get 'tasks/update'
  get 'tasks/detroy'
  get 'projects/index'
  get 'projects/show'
  get 'projects/create'
  get 'projects/update'
  get 'projects/detroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  #les ressouces taks sont imbriqués dans project pour indiquer que les taches sont liées à des projets specifiques
  resources :projects do
    resources :tasks
  end
end
