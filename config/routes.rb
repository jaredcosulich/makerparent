Makerparent::Application.routes.draw do

  resources :bookmarks

  resources :projects do
    resources :instructions
    resources :experiences
    resources :materials
  end

  get 'about', to: 'about#index'
  root 'welcome#index'
end
