Rails.application.routes.draw do
  root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'
  # get 'projects' => 'projects#index'
  # get 'projects/:id' => 'projects#show'

  resources :projects, only: [:index, :show]

end