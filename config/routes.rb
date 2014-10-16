Metube::Application.routes.draw do
  root to: "videos#index"
  resources :sounds do
    resources :comments, :only => [:create]
  end

  resources :videos do
    resources :comments, :only => [:create]
  end

  resources :comments, :only => [:update, :destroy]
end
