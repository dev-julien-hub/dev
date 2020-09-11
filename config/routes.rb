Rails.application.routes.draw do
  namespace :payment do
    scope module: 'takalo' do
      resources :redirection, only: :index
    end
  end
  namespace :busness do
    resources :contribution, only: :index
  end
  namespace :dashboard do
    resources :my_project, only: [:index, :edit, :update]
    resources :contrepartie, only: [:index, :create, :new]
    resources :animation
  end
  namespace :busness do
    resources :planification, only: [:index, :show]
  end
  namespace :dashboard do
    resources :user, only: :show do
      scope module: 'user' do
        resources :profil, only:[:index, :edit, :update, :destroy]
      end
    end
    scope module:'user' do
      resources :project
      post "project/search_all_project"
    end
  end
  devise_for :users
  root to: "welcome#index"
  get "welcome/accueil"
  post "/application/check_email_if_exist"
end
