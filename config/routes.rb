Makerparent::Application.routes.draw do

  devise_for :users
  resources :bookmarks

  resources :projects, shallow: true do
    resources :instructions
    resources :experiences
    resources :materials
  end

  get 'about', to: 'about#index'
  root 'welcome#index'
end
