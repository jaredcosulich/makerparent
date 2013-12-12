Makerparent::Application.routes.draw do

  resources :email_settings

  resources :experience_photos

  devise_for :users
  resources :bookmarks

  resources :projects, shallow: true do
    resources :instructions
    resources :experiences
    resources :materials
  end

  resource :account
  
  get 'about', to: 'about#index'
  root 'welcome#index'
end
